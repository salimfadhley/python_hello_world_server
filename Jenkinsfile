import hudson.model.*

node {
    String baseName = "salimfadhley/python_hello_world_server"
    String buildTag = "${baseName}:${env.BUILD_ID}".toString()
    def customImage


    stage(stageName) {

        (1..2).each{ bn ->
            String stageName = "Build_${bn}".toString()
            echo(stageName)
        }

        checkout scm
        customImage = docker.build(buildTag)


    }


//fingerprint
 //   stage('Push') {
 //      docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
 //           customImage.push("${env.BUILD_NUMBER}")
 //           customImage.push("latest")
 //       }
 //   }

    stage('Deploy') {
//        kubernetesDeploy(kubeconfigId: 'digital-ocean',
//                configs: 'manifest.yaml'
//        )
    }



}

