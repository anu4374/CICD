pipeline {
    agent none
    options {
        checkoutToSubdirectory('source')
    }
    tools {
        maven 'Maven'
        jdk 'Java'
    }
    stages {
        stage ('Build') {
            agent {
              label 'build'
            }
            steps {
                dir ('source') {
                    sh '''mvn -Dmaven.test.failure.ignore=true clean install
                          cp -R target/*.war ansible/hello-world.war'''
                }
                
            }
        }
    }
}
