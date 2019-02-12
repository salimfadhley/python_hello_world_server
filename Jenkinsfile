pipeline {
    agent any
    stages {

        stage('Build') {

            steps {
                scm checkout
//                script {
//                    docker.image("hello-world").withRun('') { c -> }
//                }
//                sh 'docker run hello-world'
            }
        }

        stage('Test') {

            steps {
                sh 'echo Hello World!'
//                sh './test.sh'
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