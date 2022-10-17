pipeline {
    agent any

    stages {
        stage('Check Version'){
            steps {
                sh 'docker version'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t seanmaz/my-app .'
                }
            }
        }
    }
}