
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

    }

}
