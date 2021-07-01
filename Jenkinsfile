pipeline {
    agent {
        docker {
            image "maven:3.6.0-jdk-13"
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