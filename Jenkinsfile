pipeline {
    agent {
        docker {
            image 'docker-flask:latest'
        }
    }
    stages {
        stage("Build") {
            agent any
            steps {
                sh 'docker run --name flaskapp -d -v $PWD/app:/app -p 5000:5000 docker-flask:latest'
            }
        }
    }
}

