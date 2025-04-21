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
            git branch:'deploy' , url:'https://github.com/MYPROJECTS555/React-js-node_web_application.git'
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
