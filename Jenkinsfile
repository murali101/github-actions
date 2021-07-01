pipeline {
    agent any



    stages {
        stage("Build") {
            steps {
                sh "./gradlew -version"
                sh "./gradlew clean"
            }
        }

        stage("test") {
                    steps {
                        sh "./gradlew -version"
                        sh "./gradlew clean"
                    }
                }
         stage("deploy") {
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

    options {
                skipStagesAfterUnstable()
            }
}