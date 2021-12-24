from fastapi import FastAPI, BackgroundTasks
from . import models
from .database import engine
# from mainscript import runner
from .routers import characters, users, auth, votes
import json
from .config import settings
from fastapi.middleware.cors import CORSMiddleware


# if you use alembic you can comment out this line because alembic handles connections
# models.Base.metadata.create_all(bind=engine)

app = FastAPI()

origins = ["*"]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)



@app.get("/")
async def root():
    return {"message": "Sasageyo, Sasageyo"}


app.include_router(users.router)
app.include_router(characters.router)
app.include_router(auth.router)
app.include_router(votes.router)

scraper_dict = {'kelinahospital': './HealthNewsScraper/scrapes/kh.jl',
                }


# @app.get("/scraper")
# async def scraper(background_tasks: BackgroundTasks):  
#     runner(['kelinahospital'], state=1)
#     # background_tasks.add_task(runner, ['kelinahospital', 'HCIHealthcare'], state=0)
#     return{"message": "successful scrape"}
    


# @app.get("/sqlalchemy")
# async def test_conn(db: Session = Depends(get_db)):

#     characters = db.query(models.Characters).all()
#     return {"status":characters}








