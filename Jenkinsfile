pipeline {
    agent any
    stages {
        stage('Clone Repo') {
            steps {
                echo 'Cloning repo...'
                git branch: 'master', url: 'https://github.com/dev-dhanush/test-docker-jenkins.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                sh 'docker build -t docker-app .'
            }
        }
        stage('Run Docker Container') {
            steps {
                echo 'Running container...'
                sh '''
                docker stop docker-app || true
                docker rm docker-app || true
                docker run -d -p 5000:5000 --name docker-app docker-app
                '''
            }
        }
    }
}
