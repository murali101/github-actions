pipeline {
    agent {
        docker {
            image "adoptopenjdk:11-jdk-hotspot"
            label "master"
        }
    }


    stages {
        stage("Build") {
            steps {
                sh "./gradlew -version"
                sh "./gradlew clean"
                sh "./gradlew clean build"
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}