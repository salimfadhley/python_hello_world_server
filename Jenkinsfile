import hudson.model.*

node {
    String baseName = "salimfadhley/python_hello_world_server"
    String buildTag = "${baseName}:${env.BUILD_ID}".toString()
    def customImage


    stage(stageName) {

        checkout scm

        def versions = ["A", "B"]
        for ( version in versions) {
            def stageName = "Build_${version}".toString()
            echo(stageName)
        }

//        ["A", "B"].each{ bn ->
//                def stageName = "Build_${bn}".toString()
////                echo(stageName)
//            }
//        }

//        customImage = docker.build(buildTag)


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

