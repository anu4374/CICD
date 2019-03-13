pipeline {
    agent any
    options {
        checkoutToSubdirectory('source')
    }
    tools {
        maven 'Maven'
        jdk 'Java'
    }
    stages {
        stage ('Build') {
            steps {
                dir ('source') {
                    sh '''mvn -Dmaven.test.failure.ignore=true clean install
                          cp -R target/*.war ansible/hello-world.war'''
                }
                  dir ('source/terraform/dev') {
                                    sh 'terraform init TF_LOG=DEBUG && terraform get -update  && terraform init TF_LOG=DEBUG && terraform apply -auto-approve'
                                } 
            }    
            
        }
    }
}
