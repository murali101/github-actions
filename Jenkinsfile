pipeline {
    agent {
        master {
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
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}