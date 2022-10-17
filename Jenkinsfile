pipeline {
    agent { docker { image 'docker:dind' } }
    stages {
        stage('version') {
            steps {
                python3 --version
                docker --version
            }
        }
    }
}