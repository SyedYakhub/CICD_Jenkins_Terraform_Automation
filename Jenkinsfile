pipeline {
    agent any
    stages {
        stage ('git checkout') {
            steps {
                git 'https://github.com/SyedYakhub/CICD_Jenkins_Terraform_Automation.git'
            }
        }
        stage ('terraform init'){
            steps {
                sh 'terraform init'
            }
        }
        stage ('terraform plan'){
            steps {
                sh 'terraform plan'
            }
        }
        steage ('terraform apply'){
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
    }
}
