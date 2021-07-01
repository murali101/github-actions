pipeline {
    agent {
        docker {
            image "openjdk:11-jdk-alpine"
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