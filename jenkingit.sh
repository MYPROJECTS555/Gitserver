pipeline
{
agent any
stages
{
stage('git checkout')
{
    steps
    {
        git branch: 'dev', url:'https://github.com/MYPROJECTS555/Gitserver.git'
    }
}

}
}