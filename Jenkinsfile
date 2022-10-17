pipeline {
    agent {
        docker { image 'docker:dind' }
    }
    stages{
        stage('Test') {
            steps {
                sh 'docker --version'
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Heapax/home_assignment']]])
                sh 'docker build -t pyapp:1.0 . -f pyapp.Dockerfile'
            }
        }
        stage('Build') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Heapax/home_assignment']]])
                sh 'docker build -t pyapp:1.0 . -f pyapp.Dockerfile'
            }
        }
    }
}