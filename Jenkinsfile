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
                sh 'docker run --rm -u root --name flaskapp -d -v$PWD/app:/app -v $(which docker):/usr/bin/docker -p 5000:5000 docker-flask:latest'
            }
        }
    }
}

