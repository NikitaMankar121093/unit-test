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
               sh 'apt update'
sh 'apt install git -y'            
sh 'apt install cmake -y'                
sh 'apt install make -y'
sh 'apt install -y build-essential'
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
