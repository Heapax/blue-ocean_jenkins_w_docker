pipeline {
    agent any

    stages {
        stage('Check Version'){
            steps {
                docker version
            }
        }
        stage('Build Docker Image') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Heapax/home_assignment']]])
                sudo docker build .
            }
        }
    }
}