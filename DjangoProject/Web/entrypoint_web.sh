#!/bin/bash

python3 manage.py makemigrations
python3 manage.py migrate

if [[ "$DEPLOY" = "TRUE" ]]; then
    echo "Program is not ready to deploy! Good buy!"
else
    echo "Running test"
    python3 manage.py runserver 0.0.0.0:8000
fi