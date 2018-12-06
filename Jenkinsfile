#!groovy

pipeline {
    agent {
        docker {
            image 'churchcommunitybuilder/ccb_nodejs_php:18.3'
            registryUrl 'https://registry.hub.docker.com/'
            registryCredentialsId 'dockerHubId'
        }
    }
    environment {
        CI = 'true'
    }
    stages {
        stage('Build PHP') {
            steps {
                sh 'bin/phplint'
                sh 'bin/composer.phar install'
            }
        }
        stage('Build JS') {
            environment {
                HOME = '/home/node'
            }
            steps {
                sh 'yarn install'
            }
        }
        stage('Test') {
            steps {
                sh 'node --version'
            }
        }
    }
}