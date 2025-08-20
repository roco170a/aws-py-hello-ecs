from fastapi.testclient import TestClient
from main import app

# Crea un cliente de prueba
client = TestClient(app)

# Prueba para el endpoint raíz
def test_read_root():
    response = client.get("/")
    assert response.status_code == 200
    assert response.json() == {"message": "Hello, World!"}
