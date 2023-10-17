pipeline {
    agent any
    environment {
        PUPPET_ENVIRONMENT = 'production'
        PUPPET_MANIFEST = '/etc/puppet/manifests/manifest.pp'
        PUPPET_MODULES_DIR = '/etc/puppet/repo/modules'
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
                    sh "puppet apply --environment=${PUPPET_ENVIRONMENT} ${PUPPET_MANIFEST}"
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