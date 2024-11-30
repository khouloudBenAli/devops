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
        
        stage('Build with Maven'){
	     steps{
		 sh 'mvn package'
	      }
        }
        stage('Deploy nexus'){
	     steps{
	     
	     withCredentials([file(credentialsId : 'nexusCred' , variable:'SETTINGS_FILE')]){
		sh 'mvn deploy -s $SETTINGS_FILE'
	      }
	       }
        }
    }
    
   
}
