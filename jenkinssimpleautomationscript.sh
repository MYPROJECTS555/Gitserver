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
        stage("Installing docker")
        {
            steps{
                sh '''
                
                echo " system status"
                 yum install docker
              
                '''
            }
        }
    }
}
