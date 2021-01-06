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
}
