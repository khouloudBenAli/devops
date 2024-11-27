pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        stage('Clone Master Branch'){
	     steps{
		 git url: 'https://github.com/khouloudBenAli/devops.git'
	      }
        }
    }
    
   
}
