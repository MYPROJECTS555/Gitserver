pipeline{
    agent any
    stages{
        stage('this is build system detals')
        {
            steps
            {
                sh '''
                echo " System details"
                lscpu
                
                '''
            }
        }
        stage('this memory details')
        {
            steps
            {
            sh '''
            echo " memory details"
            free -h
            '''
            }
            
        }

        stage('current runing process')
        {
            steps
            {
                Sh ''' 
                echo "This is number of current runing process"
                ps -ef 
                
                '''


          }
        }
    }
}
