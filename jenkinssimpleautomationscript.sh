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
               sh '''
               systemctl status docker | awk '/Active/{print $3}' >> /home/ec2-user/log.txt
               
               '''
            }
        }
    }
}
