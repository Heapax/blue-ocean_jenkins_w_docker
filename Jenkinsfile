pipeline {
    agent any

    stages {
        stage(version){
            steps {
                docker --version
            }
        }
        stage(build) {
            steps {
                docker build .
            }
        }
    }
}