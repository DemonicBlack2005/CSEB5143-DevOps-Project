pipeline {
    agent any

    tools {
        // This MUST match the name you typed in the Jenkins Tools screen
        nodejs 'node'
    }

    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/DemonicBlack2005/CSEB5143-DevOps-Project.git'
            }
        }

        stage('Build') {
            steps {
                // Now that the 'node' tool is active, this will work!
                sh 'npm install'
            }
        }

        stage('Test') {
            steps {
                sh 'echo "No tests implemented"'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t student-app .'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker stop my-running-app || true'
                sh 'docker rm my-running-app || true'
                sh 'docker run -d -p 3000:3000 --name my-running-app student-app'
            }
        }
    }
}