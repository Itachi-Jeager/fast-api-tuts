import pytest
from HealthNewsScraper.app import models

@pytest.fixture()
def pop_vote(test_create_characters, session, test_user):
    new_vote = models.Vote(character_id=test_create_characters[0].id, user_id=test_user['id'])
    session.add(new_vote)
    session.commit()
    



def test_votes_on_character(authorize_client, test_user, test_create_characters):
    res = authorize_client.post("/votes/", json={"character_id": test_create_characters[0].id, "dir": 1})
    assert res.status_code == 201
    

def test_votes_twice_character(authorize_client, test_user, test_create_characters, pop_vote):
    res = authorize_client.post("/votes/", json={"character_id": test_create_characters[0].id, "dir": 1})
    assert res.status_code == 409


def test_remove_vote(authorize_client, test_user, test_create_characters, pop_vote):
    res = authorize_client.post("/votes/", json={"character_id": test_create_characters[0].id, "dir": 0})
    assert res.status_code == 201


def test_remove_vote_non_exist(authorize_client, test_user, test_create_characters):
    res = authorize_client.post("/votes/", json={"character_id": test_create_characters[0].id, "dir": 0})
    assert res.status_code == 404



def test_vote_non_exist_character(authorize_client, test_user, test_create_characters):
    res = authorize_client.post("/votes/", json={"character_id": 30000, "dir": 1})
    assert res.status_code == 404


def test_unauth_user_vote(client, test_user, test_create_characters):
    res = client.post("/votes/", json={"character_id": test_create_characters[0].id, "dir": 1})
    assert res.status_code == 401
    
    


    

    