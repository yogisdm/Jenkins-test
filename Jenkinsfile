pipeline {
  
  agent any  
  
  stages {
    stage('checkout') {
      steps {
        checkout scm
  	    }
    	}
    
 
    stage('terraform version') {
      steps {
	    sh 'terraform init'
        sh 'terraform --version'
		sh 'terraform plan'
      }
    }
	
	    stage('Approval') {
      steps {
        script {
          def userInput = input(id: 'confirm', message: 'Apply Terraform?', parameters: [ [$class: 'BooleanParameterDefinition', defaultValue: false, description: 'Apply terraform', name: 'confirm'] ])
        }
      }
    }
	
    stage('Mediawiki-deploy') {
      steps {
        sh 'terraform apply -input=false -auto-approve'
	      
      }
    }

  }
  
  
}