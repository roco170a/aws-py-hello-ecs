#!/bin/bash
cd /home/ubuntu/mi-fastapi-app
# Crea un entorno virtual con Python 3.12
python3.12 -m venv venv
# Activa el entorno virtual
source venv/bin/activate
# Instala las dependencias usando el pip del entorno virtual
pip install -r requirements.txt
