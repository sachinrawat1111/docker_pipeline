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
 stage('Run image')
 {
  docker.image("img1:1.0").withRun {
   c -> echo "Completed"
  }
 }
}
