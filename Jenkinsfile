pipeline {
    agent any
    environment {
        PUPPET_ENVIRONMENT = 'production'
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
        stage('Install Puppet Nagios') {
            steps {
                // Install Puppet nagios
                script {
                    sh "puppet module install puppet/nagios"
                }
            }
        }
        stage('Install Puppet Monit') {
            steps {
                // Install Puppet monit
                script {
                    sh "puppet module install puppet/monit"
                }
            }
        }
        stage('Apply Puppet Manifest') {
            steps {
                // Apply Puppet manifest
                script {
                    sh "puppet apply --environment=${PUPPET_ENVIRONMENT} $WORKSPACE/manifests/site.pp"
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