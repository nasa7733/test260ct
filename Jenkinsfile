pipeline {
    agent any
    
    stages {

        
    
        stage ('build infrastructure') {
            steps {
                sh 'echo test'
                sh 'terraform init'
                sh 'terraform plan'
                sh 'terraform apply --auto-approve'
            }
        }
    }
    
    
}
