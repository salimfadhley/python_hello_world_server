pipeline {
    agent any
    stages {

        stage('Build') {

            steps {
                script {
                    docker.image("hello-world").withRun('') { c -> }
                }
                sh 'docker run hello-world'
                sh 'docker-compose build'
            }
        }

        stage('Test') {
            steps {
                sh 'docker-compose build'
//
//                sh 'python -m pip install -e src'
//                sh 'python -m pytest --verbose --tb=long --junitxml=junit.xml src/tests'
//                sh 'ls -l'
//                archiveArtifacts artifacts: 'junit.xml', fingerprint: true
//                junit 'junit.xml'
            }
        }

//        stage('Deploy') {
//            steps {
//                sh 'echo Hello World!'
//            }
//        }

    }


}