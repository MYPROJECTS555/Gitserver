pipeline
{
    agent any 
    tools
      {
        jdk 'java-11'
        maven 'maven'
      }
    stages
    {
        stage('codecheckout')
        {
         steps  
          {
            git branch:'main' , url:'https://github.com/MYPROJECTS555/Project_devops_demo.git'
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
