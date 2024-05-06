pipeline {
    agent any
    stages {
        stage ('Clone Code') {
            steps {
                script {
                    //Define the branch or Tag Name
                    def userInput = input(id:'userInput', message: 'Enter branch name or proceed for default'),
                    parameters: [string(defaultValue: 'master', description: 'Branch Name', name: 'BRANCH')])
                    //Retrive the branch name from user input
                    def branchName = userInput.BRANCH
                    //clone the code based on the provided branch or use the default branch
                    checkout ([$class: 'GitSCM', branches: [[name:branchName]], userRemoteConfigs:[[url:'you_repository_url']]]) 
                    echo "Code cloned from branch or tage: ${branchName}"
                }
            }
        }
    }
}