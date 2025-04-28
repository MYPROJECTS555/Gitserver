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
            git branch:'master',url:'https://github.com/shashirajraja/shopping-cart.git'
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
         stage('docker-integration')
        {
          steps
          {
            sh " docker build -t nameisvikas/apache:1 ."
          }
        }
    }
}
