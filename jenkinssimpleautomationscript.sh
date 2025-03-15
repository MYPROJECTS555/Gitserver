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
               status1=$(systemctl status docker | awk '/Active/{print $3}' | tr -d "[()]" )
               status2="running"
               if [ "$status1" == "&status2"]
               then
               echo " application is running"
               else
               echo " application is not running need to start"
               sudo systemctl start docker
               fi
               '''
            }
        }
    }
}
