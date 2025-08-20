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
-------------------------------------------------------

mvn project

mvn clean
Deletes old files and ensures a fresh start for the build.

mvn validate
Checks if the project is correctly set up and all information is available.

mvn compile
Compiles the Java source code into .class files.

mvn test
Runs unit tests on the compiled code to verify correctness.

mvn package
Packages the compiled code into a JAR, WAR, or other distributable format.

mvn verify
Does additional checks on the packaged code to make sure it’s valid.

mvn install
Installs the packaged artifact into your local Maven repository for use by other projects.

mvn deploy (optional, usually in CI/CD)
Deploys the packaged artifact to a remote repository for sharing with others.
----------------------------------------------------------------------------------------------------------------------------------

Summary of key phases in order:

Phase	What it does
clean	Deletes old build files
validate	Checks project setup
compile	Compiles source code
test	Runs unit tests
package	Creates JAR/WAR
verify	Validates the package
install	Installs artifact to local repo
deploy	Sends artifact to remote repo
