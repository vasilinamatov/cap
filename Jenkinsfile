pipeline {
    agent none
    stages {
        stage("Fix the permission issue") {
            agent any
            steps {
                sh "chown root:jenkins /run/docker.sock"
            }
        }
        stage("Test") {
            agent any
            steps {
                echo 'Hello, '
                sh 'node --version'
                sh 'svn --version'
            }
        }
        stage("Build") {
            agent any
            steps {
                sh '''#!/bin/bash
                    apt update
                    apt install docker.io
                    systemctl enable --now docker
                    docker ps --all
                    docker image list
                    docker --version
                    apt install python3-pip python3-dev
                    pip3 install flask
                    docker build -t docker-flask:latest .
                    docker run --name flaskapp -d -v$PWD/app:/app -p5000:5000 docker-flask:latest
                '''
            }
        }
    }
}

