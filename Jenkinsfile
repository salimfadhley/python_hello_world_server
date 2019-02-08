pipeline {
    agent {
        docker {
            image 'python:3.7.2-stretch'
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