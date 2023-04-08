pipeline {
    agent any
    stages {
        stage('Clone Git Repo') {
            steps {
                sshagent(['terraform_jenkins']) {
                    sh 'ssh -o StrictHostKeyChecking=no ec2-user@172.31.15.49 "rm -rf CI* && git clone https://github.com/SyedYakhub/CICD_Jenkins_Terraform_Automation.git"'
                }
            }
        }
        stage('Terraform Init') {
            steps {
                sshagent(['terraform_jenkins']) {
                    sh 'ssh -o StrictHostKeyChecking=no ec2-user@172.31.15.49 cd CICD_Jenkins_Terraform_Automation && terraform init'
                }
            }
        }
        stage('Terraform Plan') {
            steps {
                sshagent(['terraform_jenkins']) {
                    sh 'ssh -o StrictHostKeyChecking=no ec2-user@172.31.15.49 cd CICD_Jenkins_Terraform_Automation && terraform plan'
                }
            }
        }
        stage('Terraform Apply') {
            steps {
                sshagent(['terraform_jenkins']) {
                    sh 'ssh -o StrictHostKeyChecking=no ec2-user@172.31.15.49 cd CICD_Jenkins_Terraform_Automation && terraform apply --auto-approve'
                }
            }
        }
        stage('Terraform Destroy') {
            steps {
                sshagent(['terraform_jenkins']) {
                    sh 'ssh -o StrictHostKeyChecking=no ec2-user@172.31.15.49 cd CICD_Jenkins_Terraform_Automation && terraform destroy --auto-approve'
                }
            }
        }
    }
}





// pipeline {
//     agent any
//     stages {
//         stage ('ssh connect + git checkout + terraform apply') {
//             steps {
//                 sshagent(['terraform_jenkins']) {
//                 sh 'ssh -o StrictHostKeyChecking=no ec2-user@172.31.15.49 "rm -rf CI* && git clone https://github.com/SyedYakhub/CICD_Jenkins_Terraform_Automation.git"'
//                 sh 'ssh -o StrictHostKeyChecking=no ec2-user@172.31.15.49 cd CICD_Jenkins_Terraform_Automation && terraform init && terraform plan && terraform apply --auto-approve && terraform destroy --auto-approve'

// }
//             }
//         }
//     }
// }
