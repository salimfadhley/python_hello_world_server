pipeline {
    agent any
    stages {

        stage('Build') {

            steps {
                sh 'echo hello world'
                sh 'find .'
                sh 'docker-compose build'
                sh 'docker-compose run --entrypoint="python" application -m pytest --verbose --tb=long --junitxml=/project/junit.xml /project/src/tests'
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