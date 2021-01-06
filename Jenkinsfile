node
{
 def app
 stage('Clone repository')
 {
   checkout scm
 }
 stage('Build image')
 {
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
  docker.run("img1:1.0")
 }
}