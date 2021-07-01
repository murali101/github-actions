pipeline {
    agent {
        docker {
            image "java:openjdk-8-jre"
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