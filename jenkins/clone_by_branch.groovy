pipeline {
    agent any
    stages {
        stage ('Clone Code') {
            steps {
                script {
                    //Define the branch or Tag Name
                    def branchOrTagName = 'master'
                    checkout ([$class: 'GitSCM', branches: [[name:branchOrTagName]], userRemoteConfigs:[[url:'you_repository_url']]]) 
                    echo "Code cloned from branch or tage: ${branchOrTagName}"
                }
            }
        }
    }
}