pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t seanmaz/my-app .'
                }
            }
        }
    }
}