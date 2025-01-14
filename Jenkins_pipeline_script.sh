<<<<<<< HEAD
pipleline{
agent any

stages{
stage{
steps{

sh '''
echo "  print the output"
df -h
'''
=======
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
<<<<<<< HEAD
    }
>>>>>>> 14c9bee48df6ff161ecd8e05f48f143bc0eff6a3
=======

      }
>>>>>>> 7dc80e7cb3e9c38258168795c7f40cce182a9ba0
}
