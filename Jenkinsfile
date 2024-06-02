pipeline {
    agent any

    environment {
        GITHUB_CREDENTIALS = credentials('github-token')
    }

    stages {
        stage('Checkout') {
            steps {
                script {
                    git url: 'https://github.com/MeraGithubMeriPehchan/website.git',
                        branch: 'develop',
                        credentialsId: 'github-token'
                }
            }
        }

        stage('Build') {
            steps {
                echo 'Building...'
                bat 'docker build -t my-webapp .'
            }
        }

        stage('Test') {
            steps {
                echo 'Testing...'
                bat 'docker run --rm my-webapp npm test'
            }
        }

        stage('Deploy') {
            when {
                branch 'master'
            }
            steps {
                echo 'Deploying...'
                bat 'docker run -d -p 80:80 --name my-webapp-container my-webapp'
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}
