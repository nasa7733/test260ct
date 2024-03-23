pipeline {
    agent any
    environment {
       // vamsi_cloud_creds = credentials('vamsi-creds')
        hostname = 'Nasa'
    }
    stages {
        /*
         stage ('checkout'){
            steps {
                sh  'echo $hostname'
                git branch: 'main', url: 'https://github.com/nasa7733/test260ct.git'
            }
        }
        */
        stage('credentails'){
        steps {
            
            sh 'mkdir -p creds'
            sh 'echo $vamsi_cloud_creds'
            sh 'echo $vamsi_cloud_creds > ./creds/creds.json'
            sh 'pwd'
            sh 'ls'
            sh 'echo ./creds/creds.json'
          
        }
            
        }
       
    
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
