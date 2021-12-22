from .. import models, schemas, oauth2
from fastapi import Response,status, HTTPException, Depends, APIRouter
from ..database import get_db
from sqlalchemy.orm import Session
from typing import List, Optional
from sqlalchemy import func


router = APIRouter(prefix="/characters", tags=['Characters'])

@router.get("/", response_model=List[schemas.CharacterOut])
async def get_character(db: Session = Depends(get_db), limit: int = 10, skip: int = 0, search: Optional[str] =  ""):
    
    # characters = db.query(models.Characters).filter(models.Characters.title.contains(search)).limit(limit).offset(skip).all()
    results = db.query(models.Characters, func.count(models.Vote.character_id).label("likes")).join(models.Vote, 
                        models.Vote.character_id == models.Characters.id,        
                        isouter=True).group_by(models.Characters.id).filter(models.Characters.title.contains(search)).limit(limit).offset(skip).all() 
    
    
    return  results


@router.post("/", status_code=status.HTTP_201_CREATED, response_model=schemas.CharacterResponse)
async def create_character(character: schemas.CharacterCreate, db: Session = Depends(get_db), 
                            current_user: int = Depends(oauth2.get_current_user)):
    # cursor.execute("""INSERT INTO characters (title, name, published) VALUES (%s, %s, %s) RETURNING * """, 
    #                     (character.title, character.name, character.published))
    # new_character = cursor.fetchone()
    # conn.commit()
    new_character = models.Characters(owner_id =current_user.id, **character.dict())
    
    db.add(new_character)
    db.commit()
    db.refresh(new_character)
    return  new_character


@router.get("/{id}",  response_model=schemas.CharacterOut)
async def get_character(id:int, response: Response, db: Session = Depends(get_db), current_user: int = Depends(oauth2.get_current_user)):
    # cursor.execute(""" SELECT * FROM characters WHERE id=%s""", (str(id),))
    # character = cursor.fetchall()
    # character = db.query(models.Characters).filter(models.Characters.id == id).first()
    character = db.query(models.Characters, func.count(models.Vote.character_id).label("likes")).join(models.Vote, 
                        models.Vote.character_id == models.Characters.id,        
                        isouter=True).group_by(models.Characters.id).filter(models.Characters.id == id).first()
    if not character:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND,
                            detail=f"post with id: {id} was not found")
    return  character


@router.delete("/{id}", status_code=status.HTTP_204_NO_CONTENT)
async def del_character(id:int, db: Session = Depends(get_db), current_user: int = Depends(oauth2.get_current_user)):
    # cursor.execute(""" DELETE FROM characters WHERE id=%s RETURNING *;""", (str(id),))
    # deleted_character = cursor.fetchone()
    # conn.commit()
    deleted_character_query = db.query(models.Characters).filter(models.Characters.id == id)

    deleted_character = deleted_character_query.first()

    if deleted_character == None:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND,
                            detail=f"post with id: {id} does not exist")

    if deleted_character.owner_id != current_user.id:
        raise HTTPException(status_code=status.HTTP_403_FORBIDDEN, detail="Not Authorized to perform this op")


    deleted_character_query.delete(synchronize_session=False)
    db.commit()
    return Response(status_code=status.HTTP_204_NO_CONTENT)


@router.put("/{id}", response_model=schemas.CharacterResponse)
async def update_character(id:int, character:schemas.CharacterCreate, db: Session = Depends(get_db), 
                            current_user: int = Depends(oauth2.get_current_user)):
    # cursor.execute("""UPDATE characters SET title = %s, name = %s, published = %s WHERE id = %s RETURNING *""", 
    #                 (character.title, character.name, character.published, str(id),))
    # updated_character = cursor.fetchone()
    # conn.commit()
    character_query = db.query(models.Characters).filter(models.Characters.id == id)
    updated_character = character_query.first() 
    
    if updated_character == None:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND,
                            detail=f"post with id: {id} does not exist")

    if updated_character.owner_id != current_user.id:
        raise HTTPException(status_code=status.HTTP_403_FORBIDDEN, detail="Not Authorized to perform this op")

    character_query.update(character.dict(), synchronize_session=False)
    db.commit()
    return character_query.first()