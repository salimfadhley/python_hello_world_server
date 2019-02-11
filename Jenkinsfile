pipeline {
    agent {
        docker { image 'salimfadhley/testpython:latest' }
    }
    stages {

        stage('Test') {
            steps {
                sh 'python -m pip install -e src'
                sh 'python -m pytest --verbose --tb=long --junitxml=junit.xml src/tests'
                sh 'ls -l'
                archiveArtifacts artifacts: '/tmp/*.xml', fingerprint: true
                junit 'junit.xml'
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