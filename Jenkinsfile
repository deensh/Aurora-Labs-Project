pipeline {
    agent any
    options {
        ansiColor('xterm')
    }


    environment {
        PROJECT_NAME    = 'Scan End To End'
        GIT_PATH        = 'git@bitbucket.org:orchestra-group/end_to_end.git'
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
