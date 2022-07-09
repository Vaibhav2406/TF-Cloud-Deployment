pipeline {
    agent {
    node('target') 
    }
   options {
        ansiColor('xterm')
        }
    stages {
        stage('Git Checkout') {
            steps {
              git branch: 'main', url: 'https://github.com/Vaibhav2406/TF-Cloud-Deployment.git'
            }
           
        }
        stage('Installing tools on slave') {
            steps {
              ansiblePlaybook credentialsId: 'Mastercreds', disableHostKeyChecking: true, installation: 'Ansible', inventory: 'myinv', playbook: 'TerraformInstallation/tf.yml'
            }
	}
	stage('Running Terraform Init') {
            steps {
              sh 'terraform init'
            }
	}
	stage('Running Terraform Init') {
           steps {
             sh 'terraform plan'
	   }
	}
    }	
}
