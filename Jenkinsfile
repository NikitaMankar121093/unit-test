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
               sh 'sudo apt update'
sh 'sudo apt install git -y'            
sh 'sudo apt install cmake -y'                
sh 'sudo apt install make -y'
sh 'sudo apt install -y build-essential'
            }
        }
        stage("Cloning into 'Demo-project") 
        {
            steps {
                
                sh 'cd /mnt/ && git clone https://github.com/shredhanbhar/unit-test.git'
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
