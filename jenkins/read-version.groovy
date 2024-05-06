pipeline {
    agent any
    environment {
        VERSION = sh(script 'cat version.txt', returnStdout: true).trim()
    }
    stages {
        stage ('Read Version') {
            steps {
                script {
                    echo "Version number from file: ${env.VERSION}"
                }
            }
        }
    }
}