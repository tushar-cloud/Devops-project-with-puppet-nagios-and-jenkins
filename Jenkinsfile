pipeline {
    agent any
    environment {
        PUPPET_ENVIRONMENT = 'production'
        GIT_REPO = 'https://github.com/tushar-cloud/Devops-project-with-puppet-nagios-and-jenkins.git'
        GIT_BRANCH = 'main'
    }
    stages {
        stage('Checkout') {
            steps {
                git branch: "${GIT_BRANCH}", url: "${GIT_REPO}"
            }
        }
        stage('Apply Puppet Manifest') {
            steps {
                // Apply Puppet manifest
                script {
                    sh "sudo puppet apply --environment=${PUPPET_ENVIRONMENT} $WORKSPACE/manifests/site.pp"
                }
            }
        }
    }
    post {
        success {
            echo 'Puppet deployment successful!'
        }
        failure {
            echo 'Puppet deployment failed.'
        }
    }
}