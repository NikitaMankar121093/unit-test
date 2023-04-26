pipeline {
    agent {
    label {
        label ('built-in')
        customWorkspace ('/mnt/')
         }
             }

    stages {

        stage("installing packages")
        {
            steps {
                sh './tool.sh'
            }
        }
        stage("Cloning into 'Demo-project") 
        {
            steps {
                
                sh 'cd /mnt/ && git clone https://github.com/shredhanbhar/Demo-project.git'
                sh 'sleep 20'
            }
        }
        stage('Build') 
        {
           steps {
            echo 'Building the project...'
            sh 'cd /mnt/unit-test/ExampleProject/build/'
            sh 'cmake .. '
            sh 'sleep 100'
            sh 'make'
            sh 'sleep 100'
        }
        }
    }
}
