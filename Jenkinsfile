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
                sh 'sudo rm -r *;sudo git clone https://github.com/kpravin001/Test.git'
            }
        }
        stage('terraform init') {
            steps {
                sh 'sudo /home/kumar/terraform init ./jenkins'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'ls ./jenkins; sudo /home/kumar/terraform plan ./jenkins'
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}
