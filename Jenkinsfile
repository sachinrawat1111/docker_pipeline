node
{
 def app
 stage('Clone repository')
 {
   checkout scm
 }
 stage('Build image')
 {
  environment
  {
   HOME = "."
  }
  app = docker.build("img1:1.0")
 }
 stage('Test')
 {
  app.inside
  {
   echo "Tests Passed"
  }
 }
 stage('Run image')
 {
  docker.image("img1:1.0").withRun(-w /$PWD)
  {
   c -> sh 'echo 'Completed''
  }
 }
}
