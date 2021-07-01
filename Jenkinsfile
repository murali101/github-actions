
pipeline {
    agent any

    environment {
        NEW_VERSION = '1.2.0'
        SERVER_CREDENTIALS = credentials('test-local-credentials')
    }

    stages {
        stage("Build") {
            
           steps {
                        echo "building application...."
                        echo "building version ${NEW_VERSION}"
                    }
            }

        stage("test") {
             
            steps {
                  echo "testing application...."
                  echo "testing credentials ........ ===> ${SERVER_CREDENTIALS}"
            }
        }
         stage("deploy") {
            steps {
                    echo "deploying application...."
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