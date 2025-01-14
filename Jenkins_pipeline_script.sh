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
    }
>>>>>>> 14c9bee48df6ff161ecd8e05f48f143bc0eff6a3
}
