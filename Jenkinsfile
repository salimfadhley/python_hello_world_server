pipeline {
    agent {
        docker { image 'salimfadhley/testpython:latest' }
    }
    stages {

        stage('Test') {
            steps {
                sh 'python -m pip install -e src'
                sh 'python -m pytest src/tests'
            }
        }

        stage('Build') {
            steps {
                sh 'echo Hello World!'
            }
        }


        stage('Deploy') {
            steps {
                sh 'echo Hello World!'
            }
        }
    }
}