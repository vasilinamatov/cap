pipeline {
    agent none
    stages {

        stage("Fix the permission issue") {
            agent any
            steps {
                sh "sudo chown root:jenkins /run/docker.sock"
            }
        }

        stage('Test') {
            agent any
            steps {
                echo 'Hello, '
                sh 'node --version'
                sh 'svn --version'
            }
        }

        stage('Build') {
            agent any
            docker.image('docker-flask:latest').withRun('--name flaskapp -v$PWD/app:/app -p5000:5000') {
            }
        }
    }
}