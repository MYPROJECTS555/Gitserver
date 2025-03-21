pipeline {
    agent any
    tools {
        nodejs 'NodeJS 18' //Replace NodeJS 18 with the name configured in Global Tool Configuration
    }
    stages {
           stage('codecheckout')
        {
         steps  
          {
            git branch:'main' , url:'https://github.com/MYPROJECTS555/WebSiteProject.git'
          } 
        }
        stage('Node.js Build') {
            steps {
                sh 'node -v'
                sh 'npm install'
                sh 'npm run build'
            }
        }
    }
}
