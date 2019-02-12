pipeline {
    agent any
    stages {

        stage('Build') {

            steps {
                sh 'docker-compose run --entrypoint="python" dev -m pytest --verbose --tb=long --junitxml=/tmp/junit.xml /src/tests'
                archiveArtifacts artifacts: 'junit.xml', fingerprint: true
                junit 'junit.xml'
//                script {
//                    docker.image("hello-world").withRun('') { c -> }
//                }
//                sh 'docker run hello-world'
            }
        }

//        stage('Test') {
//
//            steps {
//                sh 'echo Hello World!'
////                sh './test.sh'
////                archiveArtifacts artifacts: 'junit.xml', fingerprint: true
////                junit 'junit.xml'
//            }
//        }


    }


}