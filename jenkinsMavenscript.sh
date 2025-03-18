pipeline
{
    agent any 
    tools
      {
        maven 'maven'
      }
    stages
    {
        stage('codecheckout')
        {
         steps  
          {
            git branch:'main' , url:'https://github.com/MYPROJECTS555/WebSiteProject.git'
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
