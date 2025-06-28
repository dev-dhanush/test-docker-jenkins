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
                sh 'docker build -t Docker-App .'
            }
        }
        stage('Run Docker Container') {
            steps {
                echo 'Running container...'
                sh '''
                docker stop Docker-App || true
                docker rm Docker-App || true
                docker run -d -p 5000:5000 --name Docker-App App-image
                '''
            }
        }
    }
}
