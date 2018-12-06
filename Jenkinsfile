#!groovy

pipeline {
    agent none
    environment {
        CI = 'true'
    }
    stages {
        stage('Build PHP') {
            agent {
                dockerfile true
            }
            steps {
                sh 'bin/phplint'
                sh 'bin/composer.phar install'
            }
        }
        stage('Build JS') {
            agent {
                dockerfile true
            }
            environment {
                HOME = '/home/node'
            }
            steps {
                sh 'yarn install'
            }
        }
        stage('Test') {
            agent {
                dockerfile true
            }
            steps {
                sh 'node --version'
            }
        }
    }
}