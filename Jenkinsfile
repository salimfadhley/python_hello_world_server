import hudson.model.*

node {
    String baseName = "salimfadhley/python_hello_world_server"

    String buildTag1 = "${baseName}_1:${env.BUILD_ID}".toString()
    String buildTag2 = "${baseName}_2:${env.BUILD_ID}".toString()

    def customImage1, customImage2

    stage('Build1') {
        checkout scm
        customImage1 = docker.build(buildTag1)
    }

    stage('Build2') {
        checkout scm
        customImage2 = docker.build(buildTag2)
    }

    stage('Push1') {
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            customImage1.push("${env.BUILD_NUMBER}")
            customImage1.push("latest")
        }
    }

    stage('Push2') {
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            customImage2.push("${env.BUILD_NUMBER}")
            customImage2.push("latest")
        }
    }


//    stage('UnitTest') {
//        customImage.inside() { c ->
//            sh "python -m pytest /project/src/tests --junitxml=`pwd`/junit.xml"
//            archiveArtifacts artifacts: 'junit.xml', fingerprint: true
//            junit 'junit.xml'
//        }
//    }
//
//    stage('StaticTest') {
//        customImage.inside() { c ->
//            try {
//                sh "python -m mypy /project/src/main /project/src/tests --ignore-missing-imports --junit-xml=`pwd`/mypy.xml"
//            } catch (errors) {
//                echo "Static errors detected: ${errors.toString()}"
//            }
//
//            archiveArtifacts artifacts: 'mypy.xml', fingerprint: true
//            junit 'mypy.xml'
//        }
//    }
//
//    stage('LintCheck') {
//        customImage.inside() { c ->
//            try {
//                sh "pylint helloworld --output-format=pylint2junit.JunitReporter > pylint.xml"
//            } catch (errors) {
//                echo "Lint checking errors detected: ${errors.toString()}"
//            }
//            archiveArtifacts artifacts: 'pylint.xml', fingerprint: true
//        }
//    }
//
//    stage('Push') {
//        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
//            customImage.push("${env.BUILD_NUMBER}")
//            customImage.push("latest")
//        }
//    }
//
//    stage('Deploy') {
////        kubernetesDeploy(kubeconfigId: 'digital-ocean',
////                configs: 'manifest.yaml'
////        )
//    }



}

