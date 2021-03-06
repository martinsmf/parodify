pipeline{
    agent {
        docker {
            image 'qaninja/rubywd'
        }
    }
    
    stages{
        stage('Build'){
            steps{
                echo 'Buildign of Resolve Depencecies!'
                sh 'rm -f Gemfile.lock'
                sh 'bundle install'
            }
        }
        stage('Test'){
            steps{
                echo 'Runing regression tests'
                sh 'bundle exec cucumber'
                echo 'logs reports'
                script{
                    allure includeProperties: false,
                     jdk: '',
                     results: [[path: ' logs']]
                }
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