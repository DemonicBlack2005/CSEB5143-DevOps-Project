pipeline {
    agent any

    stages {
        stage('Clone') {
    steps {
        git branch: 'main', url: 'https://github.com/DemonicBlack2005/CSEB5143-DevOps-Project.git'
    }
}

        stage('Build') {
            steps {
                // This fulfills the "Build Automation" requirement
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
                // Automates the build command you just ran
                sh 'docker build -t student-app .'
            }
        }

        stage('Run Container') {
            steps {
                // Stops old versions and runs the new one
                sh 'docker stop my-running-app || true'
                sh 'docker rm my-running-app || true'
                sh 'docker run -d -p 3000:3000 --name my-running-app student-app'
            }
        }
    }
}