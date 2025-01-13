pipleline{
agent any

stages{
stage{
steps{

sh '''
echo "  print the output"
df -h
'''
}

}

}

}