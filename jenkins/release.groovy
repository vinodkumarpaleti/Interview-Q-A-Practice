pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                //Add steps to build your application
                //For example you might use Maven, Gradle or other build tools
                echo "This is build stage"
                //Clean and build using Gradle
                sh './gradlew clean build'
            }
        }
        stage('Release') {
            steps {
                echo 'This is release stage'
            }
        }
        stage('Deploy') {
            steps {
                //Add steps for deploying the application
                //This could include copying artifacts to a server, updating configuration etc.
                echo 'This is deploy stage'
                script {
                    // Deploy your application, for example, copying artifacts to a server
                    // This is just an example, replace it with your deployment steps
                    sh 'scp -r build/* user@server:/path/to/deployment'
                }
            }
        }

    }
    post {
        success {
            echo 'build success'
        }
        failure {
            echo 'bulild faild'
        }
    }
}