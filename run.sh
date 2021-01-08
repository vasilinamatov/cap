#!/bin/bash
docker build -t docker-flask:latest .
docker run --name flaskapp -d -v $PWD/app:/app -p 5000:5000 docker-flask:latest