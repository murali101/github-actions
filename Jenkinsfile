pipeline {
    agent any

    stages {
        stage("Build") {
            steps {
                sh "./gradlew clean build"
                sh "gradle -version"
                sh "gradle clean"
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}