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

    }
}