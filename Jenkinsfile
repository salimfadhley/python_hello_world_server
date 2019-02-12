pipeline {
    agent any
    stages {

        stage('Build') {

            steps {
                script {
                    docker.image("hello-world").withRun('') { c -> }
                }
                sh 'docker run hello-world'
            }
        }

        stage('Test') {
            sh find .
            steps {
                scm checkout
                sh './test.sh'
                archiveArtifacts artifacts: 'junit.xml', fingerprint: true
                junit 'junit.xml'
            }
        }

//        stage('Deploy') {
//            steps {
//                sh 'echo Hello World!'
//            }
//        }

    }


}