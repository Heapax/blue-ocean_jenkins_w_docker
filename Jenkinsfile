pipeline {
    agent {
        docker { image 'docker:dind' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'docker --version'
                sh 'docker build -t pyapp:1.0 . -f pyapp.Dockerfile'
            }
        }
    }
}