// We are calling "groovy-class-func.groovy" file in this pipeline.

@Library('my-shared-library') _

import com.example.MyHelper

pipeline {
    agent any
    stages {
        stage('Initialize') {
            steps {
                script {
                    // Create an instance of the class
                    def helper = new MyHelper()

                    // Call the printMessage function
                    helper.printMessage("Hello from the Jenkins pipeline!")

                    // Call the sumNumbers function
                    def result = helper.sumNumbers(5, 7)
                    echo "The sum of 5 and 7 is: ${result}"
                }
            }
        }
    }
}
