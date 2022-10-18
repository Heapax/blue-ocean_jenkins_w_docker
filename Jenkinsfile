pipeline {
    agent none
    stages {
        stage('build') {
            agent {
                docker { image 'docker:dind' }
            }
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Heapax/home_assignment.git']]])
                sh 'docker build -t seanmaz/pyapp:0.1 . -f pyapp.Dockerfile'
            }
        }
        stage('test') {
            agent {
                docker { image 'seanmaz/pyapp:0.1' }
            }
            steps {
                sh 'python3 --version'
            }
        }
    }
}