#!/bin/bash
cd /home/ubuntu/mi-fastapi-app
uvicorn main:app --host 0.0.0.0 --port 8000 --reload &
