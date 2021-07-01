CODE_CHANGES = getGitChanges()
pipeline {
    agent any

    stages {
        stage("Build") {
            when {
                expression {
                    BRANCH_NAME == 'master' && CODE_CHANGES == true
                }
            }
           steps {
                        echo "building application...."
                    }
            }

        stage("test") {
            when {
                expression {
                    BRANCH_NAME == 'dev'
                }
            }
            steps {
                  echo "testing application...."
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