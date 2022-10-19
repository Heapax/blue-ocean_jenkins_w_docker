pipeline {
    agent none
    stages {
        stage('format') {
            agent {
                docker { image 'python:slim-buster' }
            }
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Heapax/home_assignment.git']]])
                sh 'python3 -m pip install black'
                sh 'black main.py'
            }
        }
        stage('build') {
            agent {
                docker { image 'python:slim-buster' }
            }
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Heapax/home_assignment.git']]])
                sh 'python3 main.py'
            }
        }
    }
}