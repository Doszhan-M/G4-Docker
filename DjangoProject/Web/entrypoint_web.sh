#!/bin/bash

python3 manage.py makemigrations
python3 manage.py migrate

if [ $DEPLOY = "TRUE" ]; then
echo "DEPLOY"
gunicorn Web.wsgi:application --bind 0.0.0.0:8001
else
echo "Running test"
python3 manage.py runserver 0.0.0.0:8000
fi