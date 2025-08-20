
# 🚀 Mi Proyecto con FastAPI

**Un proyecto simple y moderno para construir APIs rápidas y eficientes con FastAPI.**

---

## 📌 Descripción
Este proyecto es un ejemplo de cómo crear una API RESTful utilizando **FastAPI**, un framework moderno, rápido y fácil de usar para construir APIs con Python 3.7+ basado en estándares como OpenAPI y JSON Schema.

### ✨ Características
- **Rápido**: Alto rendimiento, comparable a NodeJS y Go.
- **Fácil de usar**: Sintaxis intuitiva y documentación automática.
- **Tipado**: Soporte nativo para tipos de datos (gracias a Pydantic).
- **Seguro**: Integración con OAuth2 y JWT.
- **Documentación automática**: Interfaz interactiva con Swagger UI y ReDoc.

---

## 🛠 Requisitos
- Python 3.9 o superior
- Pip (gestor de paquetes de Python)

---

## 📦 Instalación

1. **Clona el repositorio**:
   ```bash
   git clone https://github.com/tu-usuario/mi-proyecto-fastapi.git
   cd mi-proyecto-fastapi
   ```

2. **Crea un entorno virtual** (opcional pero recomendado):
   ```bash
   python -m venv venv
   source venv/bin/activate  # Linux/Mac
   venv\Scripts\activate     # Windows
   ```

3. **Instala las dependencias**:
   ```bash
   pip install -r requirements.txt
   ```

---

## 🏃‍♂️ Ejecución

1. **Inicia el servidor**:
   ```bash
   uvicorn main:app --reload
   ```
   - `--reload`: Activa el modo de recarga automática (solo para desarrollo).

2. **Accede a la documentación**:
   - Swagger UI: [http://127.0.0.1:8000/docs](http://127.0.0.1:8000/docs)
   - ReDoc: [http://127.0.0.1:8000/redoc](http://127.0.0.1:8000/redoc)

---

## 📂 Estructura del Proyecto
```
mi-proyecto-fastapi/
├── main.py          # Punto de entrada de la aplicación
├── models/          # Modelos de datos (Pydantic)
├── routes/          # Rutas de la API
├── schemas/         # Esquemas de datos
├── requirements.txt # Dependencias
└── README.md        # Este archivo
```

---

## 📝 Ejemplo de Código

### Endpoint Básico
```python
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "¡Hola, mundo!"}

@app.get("/items/{item_id}")
def read_item(item_id: int, q: str = None):
    return {"item_id": item_id, "q": q}
```

### Modelo con Pydantic
```python
from pydantic import BaseModel

class Item(BaseModel):
    name: str
    description: str = None
    price: float
    tax: float = None

@app.post("/items/")
def create_item(item: Item):
    return {"item": item.dict()}
```

---

## 📊 Endpoints Disponibles

| Endpoint       | Método | Descripción                     |
|----------------|--------|---------------------------------|
| `/`            | GET    | Mensaje de bienvenida           |
| `/items/{id}`  | GET    | Obtiene un ítem por ID          |
| `/items/`      | POST   | Crea un nuevo ítem              |

---

## 🔧 Configuración Adicional

### Variables de Entorno
Crea un archivo `.env` en la raíz del proyecto:
```env
APP_ENV=development
DATABASE_URL=sqlite:///./test.db
```

### Base de Datos (SQLite)
FastAPI no incluye ORM, pero puedes usar **SQLAlchemy** o **Tortoise-ORM**. Ejemplo con SQLAlchemy:
```python
from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

SQLALCHEMY_DATABASE_URL = "sqlite:///./test.db"
engine = create_engine(SQLALCHEMY_DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)
Base = declarative_base()
```

---

## 📜 Licencia
Este proyecto está bajo la licencia **MIT**. Consulta el archivo [LICENSE](LICENSE) para más detalles.

---

## 🤝 Contribuciones
¡Las contribuciones son bienvenidas! Abre un **issue** o envía un **pull request**. 

---

## 📬 Contacto
- **Autor**: [Tu Nombre](https://github.com/tu-usuario)
- **Email**: tu-email@example.com
