pipeline {
    agent any
    stages {
        stage ('ssh connect + git checkout + terraform apply') {
            steps {
                sshagent(['terraform_jenkins']) {
                sh 'ssh -o StrictHostKeyChecking=no ec2-user@172.31.15.49 "git clone https://github.com/SyedYakhub/CICD_Jenkins_Terraform_Automation.git"'
                sh 'ssh -o StrictHostKeyChecking=no ec2-user@172.31.15.49 cd CICD_Jenkins_Terraform_Automation.git && terraform init && terraform plan && terraform apply --auto-approve && terraform destroy --auto-approve'

}
            }
        }
    }
}
