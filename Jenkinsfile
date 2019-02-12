pipeline {
    agent any
    stages {

        stage('Build') {

            steps {
                sh 'docker-compose build'
                sh 'touch junit.xml'
                sh 'chmod a+rw junit.xml'
                sh 'docker-compose run --entrypoint="python" dev -m pytest --verbose --tb=long --junitxml=/project/pytest.xml /src/tests'
                sh 'ls -l'
                sh 'find .'
                archiveArtifacts artifacts: 'pytest.xml', fingerprint: true
                junit 'pytest.xml'
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