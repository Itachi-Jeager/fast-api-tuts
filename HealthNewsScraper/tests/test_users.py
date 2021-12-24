from HealthNewsScraper.app import schemas
import pytest
from jose import jwt
from HealthNewsScraper.app.config import settings
# client = TestClient(app)

# def test_root(client):
#     res = client.get('/')
#     print(res.json())
#     assert res.json().get("message") == "Eren"
#     assert res.status_code == 200


def test_create_user(client):
    res = client.post('/users/', json={'email': 'example@gmail.com', 'password': '123'})
    print(res.status_code)
    new_user = schemas.UserOut(**res.json())
    assert new_user.email == 'example@gmail.com'
    assert res.status_code == 201

def test_login_user(client, test_user):
    res = client.post("/login", data={'username': test_user['email'], 'password': test_user['password']})
    login_res = schemas.Token(**res.json())
    payload = jwt.decode(login_res.access_token, settings.secret_key, algorithms=[settings.algorithm])
    id = payload.get('user_id')
    assert id == test_user['id']
    assert login_res.token_type == "bearer"
    assert res.status_code == 200


@pytest.mark.parametrize("email, password, status_code", [
    ('wrongemail@gmail.com', '123', 403),
    ('exam@gmail.com', 'wrongpass', 403),
    ('wrongemail@gmail.com', 'wrongpass', 403),
    (None, '123', 422),
    ('exam@gmail.com', None, 422)
])
def test_fake_login(client, test_user, email, password, status_code):
    res = client.post('/login', data={"username": email, "password": password})
     
    assert res.status_code == status_code
    # assert res.json().get('detail') == 'Invalid Credentials'
    
