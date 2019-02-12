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
            sh "python -m mypy /project/src/main /project/src/tests --junit-xml=`pwd`/mypy.xml"
            archiveArtifacts artifacts: 'mypy.xml', fingerprint: true
            junit 'mypy.xml'
        }
    }



}

