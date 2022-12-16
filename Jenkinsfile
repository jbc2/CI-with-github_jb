pipeline {
  agent { docker { image 'python:3.8.5-alpine3.12' } }
  stages {
    stage('build') {
      steps {
        sh 'pip install -r requirements.txt'
      }
    }
    stage('Docker Image'){
      steps{
        sh 'docker build -t test1 .'
      }
    }
    stage('Run Image / Container Creation'){
      steps{
        sh 'docker run -p 5000:5000 -d --name -firstcontainer test1'
      }
    }
    
  }
}
