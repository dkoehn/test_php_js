pipeline {
    agent none
    environment {
        CI = 'true'
    }
    stages {
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
        stage('Build PHP') {
            agent {
                docker { image 'php:7-alpine' }
            }
            steps {
                sh 'bin/composer.phar install'
            }
        }
        stage('Test') {
            agent {
                docker {
                    image 'node:7-alpine'
                    args '-e HOME=/home/node'
                }
            }
            steps {
                sh 'node --version'
            }
        }
    }
}