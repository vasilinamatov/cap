pipeline {
    agent {
        dockerfile true
    }
    stages {
        stage("Build") {
            agent any
            steps {
                sh '''#!/bin/bash
                    docker build -t docker-flask:latest .
                    docker run --name flaskapp -d -v$PWD/app:/app -p5000:5000 docker-flask:latest
                '''
            }
        }
    }
}

