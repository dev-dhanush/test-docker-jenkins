pipeline {
    agent {
        docker {
            image 'node:14'
        }
    }

    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/dev-dhanush/test-docker-jenkins.git'
            }
        }

        stage('Install Dependencies') {
    steps {
        sh '''
            node -v
            npm -v
            rm -rf node_modules package-lock.json
            npm cache clean --force
            npm install
        '''
    }
}


        stage('Run App') {
            steps {
                sh 'node index.js & sleep 5'
            }
        }

        stage('Health Check') {
            steps {
                sh 'curl -I http://localhost:3000'
            }
        }
    }
}
