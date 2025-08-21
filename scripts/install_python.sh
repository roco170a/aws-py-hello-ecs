#!/bin/bash
apt-get update -y
# Instala Python 3.12 y herramientas necesarias
apt-get install -y python3.12 python3.12-dev python3.12-venv python3-pip
# Asegúrate de que pip esté disponible para Python 3.12
python3.12 -m ensurepip --upgrade
