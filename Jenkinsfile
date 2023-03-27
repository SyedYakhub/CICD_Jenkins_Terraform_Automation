pipeline {
    agent any
    stages {
        stage ('ssh connect + git checkout + terraform apply') {
            steps {
                sshagent(['docker-webapp']) {
                sh 'ssh -o StrictHostKeyChecking=no ec2-user@172.31.15.49 git clone https://github.com/SyedYakhub/CICD_Jenkins_Terraform_Automation.git'
                sh 'ssh -o StrictHostKeyChecking=no ec2-user@172.31.15.49 terraform init'
                sh 'ssh -o StrictHostKeyChecking=no ec2-user@172.31.15.49 terraform plan'
                sh 'ssh -o StrictHostKeyChecking=no ec2-user@172.31.15.49 terraform apply --auto-approve'
                sh 'ssh -o StrictHostKeyChecking=no ec2-user@172.31.15.49 terraform destroy --auto-approve'

}
            }
        }
    }
}
