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
}
