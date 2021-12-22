from .. import models, schemas, oauth2
from fastapi import Response,status, HTTPException, Depends, APIRouter
from ..database import get_db
from sqlalchemy.orm import Session
from typing import List, Optional


router = APIRouter(prefix="/votes", tags=['Votes'])

@router.post("/", status_code=status.HTTP_201_CREATED)
async def vote(vote: schemas.Vote, db: Session = Depends(get_db), 
                            current_user: int = Depends(oauth2.get_current_user)):

    check_character = db.query(models.Characters).filter(models.Characters.id == vote.character_id).first()
    if not check_character:
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND,
                            detail=f"Character with id: {vote.character_id} does not exist")

    vote_query = db.query(models.Vote).filter(models.Vote.character_id == vote.character_id, models.Vote.user_id == current_user.id)
    found_vote = vote_query.first()

    if (vote.dir ==1):
        if found_vote:
            raise HTTPException(status_code=status.HTTP_409_CONFLICT, 
                                detail=f"user {current_user.id} has already voted on this post")
        new_vote = models.Vote(character_id= vote.character_id, user_id=current_user.id)
      
        db.add(new_vote)
        db.commit()
        return {"message": "You liked this post"}
    else:
        if not found_vote:
            raise HTTPException(status_code=status.HTTP_404_NOT_FOUND,
                                detail="Vote does not exist")
        vote_query.delete(synchronize_session=False)
        db.commit()

        return  {"message":"removed vote"}

# @router.get("/", response_model=List[schemas.CharacterResponse])
# async def get_character(db: Session = Depends(get_db), limit: int = 10, skip: int = 0, search: Optional[str] =  ""):
#     # cursor.execute(""" SELECT * FROM characters""")
#     # characters = cursor.fetchall()
#     characters = db.query(models.Characters).filter(models.Characters.title.contains(search)).limit(limit).offset(skip).all()
#     return  characters