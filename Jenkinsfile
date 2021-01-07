pipeline {
    agent {
        docker { image 'docker-flask:latest' }
    }
    stages {
        stage("Build") {
            steps {
                sh '''#!/bin/bash
                    apt install docker.io
                    systemctl enable --now docker
                    docker build -t docker-flask:latest .
                    docker run --name flaskapp -d -v$PWD/app:/app -p5000:5000 docker-flask:latest
                '''
            }
        }
    }
}

