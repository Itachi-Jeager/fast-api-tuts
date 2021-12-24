from fastapi.testclient import TestClient
from HealthNewsScraper.app.database import get_db
from HealthNewsScraper.app.main import app
from HealthNewsScraper.app.oauth2 import create_access_token

from HealthNewsScraper.app.models import Base
from HealthNewsScraper.app import models
import pytest

from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
# import psycopg2
# from psycopg2.extras import RealDictCursor
from HealthNewsScraper.app.config import settings


SQLALCHEMY_DATABASE_URL = f'postgresql://{settings.database_username}:{settings.database_password}@{settings.database_hostname}:{settings.database_port}/{settings.database_name}_test'

engine = create_engine(SQLALCHEMY_DATABASE_URL)

TestSessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

# Base = declarative_base()

@pytest.fixture
def session():
    Base.metadata.drop_all(bind=engine)
    Base.metadata.create_all(bind=engine)
    db = TestSessionLocal()
    try:
        yield db
    finally:
        db.close()


@pytest.fixture
def client(session):
    def override_get_db():
        db = TestSessionLocal()
        try:
            yield db
        finally:
            db.close()
    app.dependency_overrides[get_db] = override_get_db
    yield TestClient(app)


@pytest.fixture
def test_user2(client):
    user_data = {'email': 'exampull@gmail.com', 'password': '4321'}
    res = client.post('/users/', json=user_data)
    new_user = res.json()
    new_user['password'] = user_data['password']
    assert res.status_code == 201
    return new_user

@pytest.fixture
def test_user(client):
    user_data = {'email': 'exam@gmail.com', 'password': '1234'}
    res = client.post('/users/', json=user_data)
    new_user = res.json()
    new_user['password'] = user_data['password']
    assert res.status_code == 201
    return new_user

@pytest.fixture
def token(test_user):
    return create_access_token({"user_id": test_user['id']})

@pytest.fixture
def authorize_client(client, token):
    client.headers={
        **client.headers,
        "Authorization": f"Bearer {token}"
    }
    return client


@pytest.fixture
def test_create_characters(test_user, session, test_user2):
    posts_data = [{
        "title": "warrior",
        "name": "Reiner",
        "owner_id": test_user['id']
    },
        {
        "title": "kami",
        "name": "Toobi",
        "owner_id": test_user['id']
    },
        {
        "title": "god",
        "name": "King Riess",
        "owner_id": test_user['id']
    },
    {
        "title": "Ment",
        "name": "Tuangaga Coongaga",
        "owner_id": test_user2['id']
    }]

    def create_character_model(character):
        return models.Characters(**character)


    characters_map = map(create_character_model, posts_data)
    characters = list(characters_map)
    session.add_all(characters)
    session.commit()
    db_characters = session.query(models.Characters).all()
    return db_characters