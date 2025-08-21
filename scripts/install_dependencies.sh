#!/bin/bash
# Asegúrate de que el directorio tenga los permisos correctos
sudo chown -R ubuntu:ubuntu /home/ubuntu/mi-fastapi-app

cd /home/ubuntu/mi-fastapi-app
# Crea un entorno virtual con Python 3.12
python3.12 -m venv venv
# Activa el entorno virtual
source venv/bin/activate

# Instala las dependencias dentro del entorno virtual
pip install --break-system-packages -r requirements.txt