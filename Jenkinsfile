pipeline {
    agent {
        docker { image 'docker-flask:latest' }
    }
    stages {
        stage("Build") {
            steps {
                sh '''#!/bin/bash
                    docker run --name flaskapp -d -v$PWD/app:/app -p5000:5000 docker-flask:latest
                '''
            }
        }
    }
}

