pipeline {
    agent {
        docker {
            image 'python:3-alpine'
        }
    }
    stages {
        stage('test') {
            steps {
                sh "python -m pip install -e src"
            }

        }
        stage('build') {
            steps {
                sh 'docker build .'
            }
        }
    }
}