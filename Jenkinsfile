pipeline {
    agent any

    tools {
        gradle "gradle-71"
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