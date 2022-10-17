pipeline {
    agent { docker { image 'docker:dind' } }
    stages {
        stage('version') {
            steps {
                ls
                docker build -t hello:latest .
            }
        }
    }
}