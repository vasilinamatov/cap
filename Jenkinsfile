pipeline {
    agent none
    stages {
        stage ('Build') {
            agent any

            steps {
                echo 'Hello, '
                sh '''#!/bin/bash
                    sudo apt update
                    sudo apt install docker.io
                    sudo systemctl enable --now docker
                    sudo docker ps --all
                    sudo docker image list
                    sudo docker --version
                    sudo apt install python3-pip python3-dev
                    sudo pip3 install flask
                    sudo docker build -t docker-flask:latest .
                    sudo docker run --name flaskapp -d -v$PWD/app:/app -p5000:5000 docker-flask:latest
                '''
            }
        }
    }
}