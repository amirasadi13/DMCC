# This docker file is used for local development via docker-compose
# Creating image based on official python3 image
FROM python:3.9.16-alpine3.17

# Fix python printing
ENV PYTHONUNBUFFERED 1
WORKDIR /app
RUN python3 -m pip install --upgrade pip 
# Installing all python dependencies
ADD requirements/ requirements/
RUN pip install -r requirements/local.txt

# Get the django project into the docker container

COPY .. /app/
