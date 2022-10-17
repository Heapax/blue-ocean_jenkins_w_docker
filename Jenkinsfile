pipeline {
    agent { docker { image 'mavem:3.3.3' } }
    stages {
        stage('version') {
            steps {
                sh 'mvn --version'
            }
        }
    }
}