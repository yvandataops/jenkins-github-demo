pipeline {
    agent any stages {
        stage('Checkout') {
            steps {
                echo 'Source code retrieved from GitHub.'
            }
        } stage('Build') {
            steps {
                echo 'Building application...' sh './app.sh'
            }
        } stage('Test') {
            steps {
                echo 'Running tests...' sh './test.sh'
            }
        } stage('Package') {
            steps {
                echo 'Packaging application...' sh 'tar -czf application.tar.gz app.sh' archiveArtifacts artifacts: 'application.tar.gz'
            }
        }
    } post {
        success {
            echo 'CI pipeline succeeded!'
        } failure {
            echo 'CI pipeline failed!'
        } always {
            echo 'Pipeline finished.'
        }
    }
}
