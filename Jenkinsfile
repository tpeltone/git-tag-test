pipeline {
    agent { docker { image 'ruby' } }
    stages {
/*         stage('build say version') {
            steps {
                sh 'ruby --version'
            }
        }

        stage('build say hello world') {
            steps {
                sh 'ruby hello-world.rb'
            }
        }  */

        stage ('Build') {
            steps {
                sh 'echo "Hello World"'
                sh '''
                    echo "Multiline shell steps work too"
                    ls -lah 
                '''
 
            }

        }

        stage('Test') {
            steps {
                sh 'echo "Fail!"; exit 1'
            }
        }

    }

    post {
        always {
            echo 'This will always run'
        }
        success {
            echo 'This will run only if successful'
        }
        failure {
            echo 'This will run only if failed'
        }
        unstable {
            echo 'This will run only if the run was marked as unstable'
        }
        changed {
            echo 'This will run only if the state of the Pipeline has changed'
            echo 'For example, if the Pipeline was previously failing but is now successful'
        }
    }
    
}