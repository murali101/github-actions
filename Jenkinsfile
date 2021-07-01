pipeline {
    agent {
        docker {
            image "gradle:jdk10"
            label "master"
        }
    }
    options {
            skipStagesAfterUnstable()
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