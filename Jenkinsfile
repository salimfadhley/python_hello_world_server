pipeline {
    agent {
        docker { image 'salimfadhley/testpython:latest' }
    }
    stages {

        stage('Test') {
            steps {
                sh 'python -m pip install -e src'
                sh 'python -m pytest --verbose --tb=long --junitxml=/tmp/junit.xml src/tests'
//                archiveArtifacts artifacts: '/tmp/junit.xml', fingerprint: true
                sh 'ls -l /tmp/'
                junit '/tmp/junit.xml'
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