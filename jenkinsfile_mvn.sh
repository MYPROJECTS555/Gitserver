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
       stage('code-checkout')
      {
       steps
       {
         git branch:'master',url:'https://github.com/shashirajraja/shopping-cart'
       }
      }
       stage('mvn compile')
       {
         steps
         {
            sh 'mvn compile'
         }
       }
       stages('mvn install')
       {
        steps
        {
          sh 'mvn clean install'
        }
     }
   }
}


