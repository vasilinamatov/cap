pipeline {
    agent { dockerfile true }
    stages {
        stage("Build") {
            steps {
                docker.image('docker-flask:latest').pull()
            }
        }
    }
}

