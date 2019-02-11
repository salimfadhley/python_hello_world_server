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
                archiveArtifacts artifacts: 'junit.xml', fingerprint: true
                junit 'junit.xml'
            }
        }

    }

    agent {
        docker { image 'docker/compose' }

    }
    stages {

        stage('Build') {
            steps {
                sh 'docker-compose build'
            }
        }


//        stage('Deploy') {
//            steps {
//                sh 'echo Hello World!'
//            }
//        }

    }
}