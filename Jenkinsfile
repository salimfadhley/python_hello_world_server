pipeline {
    agent none
    stages {

        stage('Build') {
            agent {
                any
            }
            steps {
                script {
                    docker.image("hello-world").withRun('') { c -> }
                }

                sh 'docker run hello-world'
                sh 'docker-compose build'
            }
        }

//        stage('Test') {
//            agent {
//                docker { image 'docker/compose:1.23.2' }
//            }
//            steps {
//                sh 'python -m pip install -e src'
//                sh 'python -m pytest --verbose --tb=long --junitxml=junit.xml src/tests'
//                sh 'ls -l'
//                archiveArtifacts artifacts: 'junit.xml', fingerprint: true
//                junit 'junit.xml'
//            }
//        }

//        stage('Deploy') {
//            steps {
//                sh 'echo Hello World!'
//            }
//        }

    }


}