pipeline {
    agent any
    options {
        ansiColor('xterm')
    }
    environment {
        PROJECT_NAME    = 'Aurora-Labs-Project'
        GOPATH          = "${WORKSPACE}"
        GOBIN           = "${GOPATH}"
        PROJECT         = "${GOBIN}"

    }

    stages {
        stage('Print Hellow World') {
            steps {
               sh 'python3 ${GOBIN}/main.py'
            }
        }
    }
}
