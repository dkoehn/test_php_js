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
                docker {
                    image 'node:7-alpine'
                }
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
                docker {
                    image 'node:7-alpine'
                    args '-u root'
                }
            }
            steps {
                sh 'node --version'
            }
        }
    }
}