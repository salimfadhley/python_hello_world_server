node {
    String baseName = "salimfadhley/python_hello_world_server"
    String buildTag = "${baseName}:${env.BUILD_ID}".toString()
    def customImage

    stage('Build') {
        checkout scm
        customImage = docker.build(buildTag)
    }

    stage('Test') {


        customImage.inside() { c ->
            sh "python -m pytest /project/src/tests --junitxml=/project/junit.xml"
            archiveArtifacts artifacts: '/project/junit.xml', fingerprint: true
            junit '/project/junit.xml'
        }
    }

}


//pipeline {
//    agent any
//    stages {
//
//        stage('Build') {
//
//            steps {
//                sh 'rm -f junit.xml'
//                sh 'docker build . --target application -t salimfadhley/python_hello_world_server:latest'
//                sh 'docker run --rm -v `pwd`:/project --entrypoint=ls salimfadhley/python_hello_world_server:latest -l'
//                sh 'docker run --rm -v `pwd`:/project --entrypoint=python salimfadhley/python_hello_world_server:latest -m pytest /src/tests -p no:cacheprovider --junitxml=/project/junit.xml'
////                sh 'docker-compose run --entrypoint="ls" dev -l /project'
////                sh 'docker-compose run --entrypoint="python" dev -m pytest --verbose --tb=long --junitxml=/project/junit.xml /src/tests'
//                sh 'ls -l'
////                sh 'find .'
//                archiveArtifacts artifacts: 'junit.xml', fingerprint: true
//                junit 'junit.xml'
////                script {
////                    docker.image("hello-world").withRun('') { c -> }
////                }
////                sh 'docker run hello-world'
//            }
//        }
//
////        stage('Test') {
////
////            steps {
////                sh 'echo Hello World!'
//////                sh './test.sh'
//////                archiveArtifacts artifacts: 'junit.xml', fingerprint: true
//////                junit 'junit.xml'
////            }
////        }
//
//
//    }
//
//
//}