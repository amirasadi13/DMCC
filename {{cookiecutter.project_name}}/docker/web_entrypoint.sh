#!/bin/bash

echo "--> Waiting for db to be ready"
# ./wait-for-it.sh db:5432

python manage.py makemigrations --noinput

python manage.py collectstatic --noinput

python manage.py migrate

python manage.py runserver 0.0.0.0:8000