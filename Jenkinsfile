pipeline {
    agent any
    stages {

        stage('Build') {

            steps {
                sh 'find .'
                sh 'docker-compose run --entrypoint="find" application .'
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