pipeline {
    agent {
        node {
            label 'master'
        }
    }

    stages {

        stage('terraform started') {
            steps {
                sh 'echo "Started...!" '
            }
        }
        stage('git clone') {
            steps {
                cleanWs()
                sh 'git clone https://github.com/kpravin001/Test.git'
            }
        }
      
        stage('terraform init') {
            steps {
                
                sh 'terraform --version'
                sh 'cd /home/kp01/test/Aug/'
                sh 'terraform init'
                sh "echo \$PWD"
            }
        }
        stage('terraform plan') {
            steps {
                sh 'cd /home/kp01/test/Aug'
                sh 'terraform plan -out=tfplan -input=false'
                sh 'echo \$PWD'
            }
        }
        stage('terraform apply') {
            steps {
                sh 'cd /home/kp01/test/Aug'
                sh 'terraform apply'
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}
