pipeline {
    agent any
    options {
            skipStagesAfterUnstable()
        }


    stages {
        stage("Build") {
            steps {
                sh "./gradlew -version"
                sh "./gradlew clean"
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}