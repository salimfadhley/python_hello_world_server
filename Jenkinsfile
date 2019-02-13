import hudson.model.*

node {
    String baseName = "salimfadhley/python_hello_world_server"
    String buildTag = "${baseName}:${env.BUILD_ID}".toString()
    def customImage

    stage('Build') {
        checkout scm
        customImage = docker.build(buildTag)
    }

    stage('UnitTest') {
        customImage.inside() { c ->
            sh "python -m pytest /project/src/tests --junitxml=`pwd`/junit.xml"
            archiveArtifacts artifacts: 'junit.xml', fingerprint: true
            junit 'junit.xml'
        }
    }

    stage('StaticTest') {
        customImage.inside() { c ->
            try {
                sh "python -m mypy /project/src/main /project/src/tests --ignore-missing-imports --junit-xml=`pwd`/mypy.xml"
            } catch (errors) {
                echo "Static errors detected: ${errors.toString()}"
            }

            archiveArtifacts artifacts: 'mypy.xml', fingerprint: true
            junit 'mypy.xml'
        }
    }

    stage('LintCheck') {
        customImage.inside() { c ->
            try {
                sh "pylint helloworld --output-format=pylint2junit.JunitReporter > pylint.xml"
            } catch (errors) {
                echo "Lint checking errors detected: ${errors.toString()}"
            }
            archiveArtifacts artifacts: 'pylint.xml', fingerprint: true
        }
    }

    stage('Push') {
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            customImage.push("${env.BUILD_NUMBER}")
            customImage.push("latest")
        }
    }



}

