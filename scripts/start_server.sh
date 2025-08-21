#!/bin/bash
cd /home/ubuntu/mi-fastapi-app
# Activa el entorno virtual
source venv/bin/activate
# Ejecuta Uvicorn usando el Python del entorno virtual
nohup python -m uvicorn main:app --host 0.0.0.0 --port 80 --reload > uvicorn.log 2>&1 &

