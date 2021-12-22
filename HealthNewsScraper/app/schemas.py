from pydantic import BaseModel, EmailStr
from datetime import datetime
from typing import Optional

from pydantic.types import conint

# class CharacterPost(BaseModel):
#     title: str
#     name: str
#     published: bool=True

class UserCreate(BaseModel):
    email:EmailStr
    password: str


class UserOut(BaseModel):
    id:int
    email:EmailStr
    created_at: datetime

    class Config:
        orm_mode = True


class UserLogin(BaseModel):
    email: EmailStr
    password: str

class CharacterBase(BaseModel):
    title: str
    name: str
    published: bool=True


class CharacterCreate(CharacterBase):
    pass


class CharacterResponse(CharacterBase):
    id: int
    owner_id: int
    created_at: datetime
    owner: UserOut

    class Config:
        orm_mode = True


class CharacterOut(BaseModel):
    Characters: CharacterResponse
    likes: int


class Token(BaseModel):
    access_token:  str
    token_type: str


class TokenData(BaseModel):
    id: Optional[str] = None


class Vote(BaseModel):
    character_id: int
    dir: conint(le=1)


