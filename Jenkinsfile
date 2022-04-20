pipeline {
    agent any 
    stages {
        stage('test') { 
            steps {
           echo "Hello world"  
            }
        }
        stage('Build') { 
            steps {
               echo "test"
           sh " docker build -t my-app:1.0 ."
            }
        }
        stage('Execute') { 
            steps {
              echo "deploy" 
           sh " docker run my-app:1.0"
            }
        }
    }