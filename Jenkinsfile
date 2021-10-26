pipeline {
 agents any
 Environment {
  SVC-ACCOUNT = credentials ('gcpkey')
 }
 stages {
  stage('credentials')
  {
    steps {
    sh 'mkdir -p creds'
          }
                      }
  stage('checkout')
  {
   steps {
   git branch: 'master', url: 'https://github.com/nasa7733/test260ct.git'
   }
  }

  stage('set terraform-path'){
    steps {
      script{
       def tfHome = tool name: 'Terraform'
       env.PATH = "${tfHome}:${env.PATH}"
      }
        sh 'terraform --version'
    }
  }
  stage (provision_infrastructure){
   steps {
    sh 'terraform init'
   // sh 'terraform plan'
   }
  }
 }
}
