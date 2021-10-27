pipeline {
    agent any
    environment {
        gcpkey = credentials('gcpkey')
    }
    stages {
        
         stage ('checkout'){
            steps {
                git branch: 'main', url: 'https://github.com/nasa7733/test260ct.git'
            }
        }
        
        stage('credentails'){
        steps {
            sh 'mkdir -p creds'
            sh 'echo $gcpkey > ./creds/creds.json'
        }
            
        }
        stage('set terraform path') {
            steps {
                script {
                def tfHome = tool name: 'Terraform'
                env.PATH = "${tfHome}:${env.PATH}"
                }
            }
        }
    
        stage ('build infrastructure') {
            steps {
                sh 'terraform init'
                sh 'terraform plan'
                sh 'terraform apply -auto-approve'
            }
        }
    }
    
    
}
