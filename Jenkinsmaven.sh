pipeline
{
    agent any 

    tools
      {
        jdk 'java-11'
        maven 'maven'
      }
    stages('maven project')
    {
        stage('code checkout')
        {
         steps  
          {
            git branch:'dev' , url:'https://github.com/MYPROJECTS555/Gitserver.git'
          } 
        }
        stage('compile')
        {
          steps
          {
            sh "mvn compile"
          }
        }
        stage('Build')
        {
          steps
          {
            sh "mvn clean install"
          }
        }
         stage('present working directory')
        {
          steps
          {
            sh '''
            echo "this location of file"
            $pwd
            '''
          }
        }
   
   }
}
