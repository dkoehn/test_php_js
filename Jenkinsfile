pipeline {
    agent none
    stages {
        stage('Build JS') {
            agent {
                docker {
                    image 'node:7-alpine'
                    args '-e HOME=/home/node'
                }
            }
            steps {
                sh 'export HOME=/home/node yarn install'
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