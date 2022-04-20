pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
           echo "build"     
             
            }
        }
        stage('test') { 
            steps {
               echo "test"
                sh "python hello.py"
            }
        }
      
    }
}
