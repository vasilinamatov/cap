pipeline {
    agent {
        docker {
            image 'docker-flask:latest'
            args '--name flaskapp -d -v$PWD/app:/app -p5000:5000'
        }
    }
    stages {
        stage("Build") {
            steps {
                sh 'node --version'
            }
        }
    }
}

