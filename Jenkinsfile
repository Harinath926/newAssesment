pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
           echo "build"     
                sh "python hello.py"
            }
        }
        stage('execute') { 
            steps {
               echo "test"
            }
        }
        stage('Deploy') { 
            steps {
              echo "deploy" 
            }
        }
    }
}
