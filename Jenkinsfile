pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                script {
                    // Hello, World! Java Program
                    def javaCode = '''
                    public class HelloWorld {
                        public static void main(String[] args) {
                            System.out.println("Hello, World!");
                        }
                    }
                    '''
                    writeFile file: 'HelloWorld.java', text: javaCode
                    
                    // Compile the Java code
                    sh 'javac HelloWorld.java'
                }
            }
        }
        stage('Test') {
            steps {
                // Run unit tests (if you have any)
                // Replace the test command with the actual test command for your project
                sh 'echo "Running tests..."'
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
