#!groovy

pipeline {
    agent {
        dockerfile true
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