pipleline{
agent any
stages{
stage('frist stage')
 {
 steps
  {
 sh ''' 

 echo " Details about system"
 uname-a

 '''
 }
}
stage('second stage')
{
steps
{

sh '''
   echo "memory details"
   free -h

'''
}    
}
stage('third stage')
{
steps{

sh '''
   echo "memory details"
   free -h

'''
}    
}

}

}