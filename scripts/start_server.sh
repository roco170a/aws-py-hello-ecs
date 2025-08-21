#!/bin/bash
cd /home/ubuntu/mi-fastapi-app
# Activa el entorno virtual
source venv/bin/activate
# Ejecuta Uvicorn usando el Python del entorno virtual
python -m uvicorn main:app --host 0.0.0.0 --port 8000 --reload &
