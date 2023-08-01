pipeline {
    agent any
    
stages {
        stage('Build') { 
            steps {
           echo "build"  
                sh "javac Hello.java"

            }
        }
        stage('test') { 
            steps {
               echo "test"
                sh "java hello"
            }
        }
    }
    
    post {
        success {
            echo 'Build successful! Sending email notification...'
            // Configure and send success email notification
            emailext (
                subject: "Jenkins Build Successful: ${currentBuild.fullDisplayName}",
                body: "The Jenkins build ${currentBuild.fullDisplayName} was successful.",
                recipientProviders: [[$class: 'CulpritsRecipientProvider'], [$class: 'RequesterRecipientProvider']],
                replyTo: "",
                to: "harinath.kavuri@perigorddata.com" // Add the recipient email addresses here (comma-separated)
            )
        }
        failure {
            echo 'Build failed! Sending email notification...'
            // Configure and send failure email notification
            emailext (
                subject: "Jenkins Build Failed: ${currentBuild.fullDisplayName}",
                body: "The Jenkins build ${currentBuild.fullDisplayName} has failed. Please check the build log for details.",
                recipientProviders: [[$class: 'CulpritsRecipientProvider'], [$class: 'RequesterRecipientProvider']],
                replyTo: "",
                to: "harinath.kavuri@perigorddata.com" // Add the recipient email addresses here (comma-separated)           
            )
        }
    }
}
