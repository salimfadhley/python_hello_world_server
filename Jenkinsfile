pipeline {
    agent any
    stages {

        stage('Build') {

            steps {
                sh 'docker-compose build'
                sh 'touch junit.xml'
                sh 'chmod a+rw junit.xml'
                sh 'docker run --rm -v `pwd`:/project --entrypoint=/bin/bash salimfadhley/python_hello_world_server:latest ls -l'
//                sh 'docker-compose run --entrypoint="ls" dev -l /project'
//                sh 'docker-compose run --entrypoint="python" dev -m pytest --verbose --tb=long --junitxml=/project/junit.xml /src/tests'
//                sh 'ls -l'
//                sh 'find .'
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