pipeline{
    agent {
        docker {
            image 'ruby'
        }
    }
    
    stages{
        stage('Build'){
            steps{
                echo 'Buildign of Resolve Depencecies!'
                sh 'bundle install'
            }
        }
        stage('Test'){
            steps{
                echo 'Runing regression tests'
            }
        }
        stage('UAT'){
            steps{
                echo 'Wait for user Acceptance'
                input(message: 'Go tu production?', ok: 'Yes')
            }
        }
        stage('Prod'){
            steps{
                echo 'WebApp is Ready :)'
            }
        }
    }
}