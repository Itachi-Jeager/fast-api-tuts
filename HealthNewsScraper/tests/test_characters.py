from HealthNewsScraper.app import schemas
import pytest

def test_get_all_posts(client, test_create_characters):
    res = client.get("/characters/")

    def validate(character):
        return schemas.CharacterOut(**character)

    character_map = map(validate, res.json())
    character_list = list(character_map)

    assert len(res.json()) == len(test_create_characters)
    assert res.status_code == 200
    # assert character_list[0].Characters.id == test_create_characters[0].id


def test_unauthorized_user_get_one_post(client, test_create_characters):
        res = client.get(f"/characters/{test_create_characters[0].id}/")
        assert res.status_code == 401



def test_one_non_exist_character(authorize_client, test_create_characters):
        res = authorize_client.get(f"/characters/46466")
        assert res.status_code == 404


def test_get_one_post(authorize_client, test_create_characters):
        res = authorize_client.get(f"/characters/{test_create_characters[0].id}")
        character = schemas.CharacterOut(**res.json())
        assert character.Characters.id == test_create_characters[0].id
        assert character.Characters.name == test_create_characters[0].name
        assert character.Characters.title == test_create_characters[0].title



@pytest.mark.parametrize("title, name, published, status_code", [
    ('farmer', 'random', True, 201),
    ('farmer', 'Heittz', True, 201),
    ('Scout', 'Connie', True, 201),
    ('Cheif', 'Zaza', False,  201),
])
def test_create_post(authorize_client, test_create_characters, test_user, title, name, published, status_code):
    res = authorize_client.post("/characters/", json={"title": title, "name": name, "published": published })

    create_character = schemas.CharacterResponse(**res.json())
    assert res.status_code == status_code
    assert create_character.title == title
    assert create_character.name == name
    assert create_character.published == published
    assert create_character.owner_id == test_user['id']


def test_unauthorized_user_create_post(client, test_user, test_create_characters):
        res = client.post(f"/characters/", json={"title": "arbiter", "name": "random name"})
        assert res.status_code == 401


def test_unauthorized_user_delete_post(client, test_user, test_create_characters):
    res = client.delete(
        f"/characters/{test_create_characters[0].id}"
    )
    assert res.status_code == 401


def test_delete_post_success(authorize_client, test_user, test_create_characters):
    res = authorize_client.delete(
        f"/characters/{test_create_characters[0].id}"
    )
    assert res.status_code == 204


def test_delete_non_exist_post(authorize_client, test_user, test_create_characters):
    res = authorize_client.delete(
        "/characters/5000"
    )
    assert res.status_code == 404


def test_delete_other_user(authorize_client, test_user, test_create_characters):
    res = authorize_client.delete(
        f"/characters/{test_create_characters[3].id}"
    )
    assert res.status_code == 403


def test_update_post(authorize_client, test_user, test_create_characters):
    data = {
        "title": "god",
        "name": "Ymir",
        "id": test_create_characters[2].id
    }
    res = authorize_client.put(f"/characters/{test_create_characters[2].id}", json=data)
    updated_character = schemas.CharacterCreate(**res.json())
    assert res.status_code == 200
    assert updated_character.title == data['title']
    assert updated_character.name == data['name']


def test_update_other_user_character(authorize_client, test_user, test_user2, test_create_characters):
    data = {
        "title": "god",
        "name": "Ymir",
        "id": test_create_characters[3].id
    }
    res = authorize_client.put(f"/characters/{test_create_characters[3].id}", json=data)
    assert res.status_code == 403


def test_unauthorized_user_update_post(client, test_user, test_create_characters):
    data = {
        "title": "god",
        "name": "Ymir",
        "id": 3000
    }
    res = client.put(
        f"/characters/{test_create_characters[0].id}",
        json=data)
    assert res.status_code == 401


def test_put_non_exist_post(authorize_client, test_user, test_create_characters):
    data = {
        "title": "god",
        "name": "Ymir",
        "id": 4000
    }
    res = authorize_client.put(
        "/characters/5000", json=data
    )
    assert res.status_code == 404




