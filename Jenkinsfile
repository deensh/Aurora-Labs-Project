pipeline {
    agent any
    environment {
        PROJECT_NAME    = 'Aurora-Labs-Project'
        GOPATH          = "${WORKSPACE}"
    }
    stages {
        stage('Print Hellow World') {
            steps {
               sh 'python3 ${GOPATH}/main.py'
            }
        }
    }
}