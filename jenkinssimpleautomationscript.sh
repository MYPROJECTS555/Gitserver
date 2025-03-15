pipeline 
{
    agent any
    stages
    {
        stage("memory details")
        {
            steps{
                sh '''
                
                echo " system status"
                free -h | awk '/Mem/{print}'
              
                '''
            }
        }
        stage('Install Docker') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'root_credentials', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                    sh "echo '$PASSWORD' | sudo -S yum install -y docker"
                }
            }
        }
    }
}
