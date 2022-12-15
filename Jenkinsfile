node{
  def app
    stage('Clone'){
      checkout scm
    }
    stage('Build image'){
        app = docher.buid('test/test')
    }
    stage('Test image'){
      docker.image('test/test').withRun('-p 80:80'){ c ->
        sh 'docker ps'
        sh 'curl localhost'
    }
  }
}
      
