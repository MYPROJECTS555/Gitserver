pipeline
{
    agent any 
    tool
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
        stage('mvn compile')
        {
          steps
          {
            sh "mvn compile"
          }
        }
        stage('mvn Build')
        {
          steps
          {
            sh "mvn clean install"
          }
        }
    }
}
