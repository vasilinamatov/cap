pipeline {
    agent any
    stages {
        stage("Build") {
            agent any
            steps {
                sh 'docker build -t docker-flask:latest .'
                sh 'docker run --name flaskapp -d -v $PWD/app:/app -p 5000:5000 docker-flask:latest'
            }
        }
    }
}


