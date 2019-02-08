pipeline {
    agent { docker 'docker:latest' }
    stages {
        stage('build') {
            steps {
                sh 'docker buiold .'
            }
        }
    }
}