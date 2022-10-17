pipeline {
    agent {
        docker {image 'python:slim-buster'}
    }
    stages {
        stage('version') {
            steps {
                sh 'python3 --version'
            }
        }
        stage('hello') {
            steps {
                sh 'python3 main.py'
            }
        }
    }
}