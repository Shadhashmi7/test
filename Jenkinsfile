pipeline {
    agent any
    stages {
        stage('Code check out') {
            steps {
                git branch: 'main', url: 'https://github.com/Shadhashmi7/test.git'
            }
        }
        stage('Build image') {
            steps {
                sh 'docker build -t mytest .'
                sh 'ls /usr/share/nginx/html'
            }
        }
        stage('docker images push dockerhub') {
            steps {
               withCredentials([string(credentialsId: 'dockerhub', variable: 'dockerHub')]) {
                sh 'docker tag mytest meehashmi/mytest:latest'
                sh 'docker login -u meehashmi -p ${dockerHub}'
                sh 'docker push meehashmi/mytest:latest'

                }
            }
        }
        stage('deploy') {
            steps {
                sh 'docker-compose down && docker-compose up -d'
            }
    }   
        
        }
}