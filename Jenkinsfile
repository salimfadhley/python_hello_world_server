pipeline {
    agent any
    stages {

        stage('Build') {

            steps {
                sh 'echo hello world'
                scm checkout
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