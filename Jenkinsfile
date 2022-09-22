pipeline {
  agent {
    docker {
      image 'davidcozens/cucumber:1'
      registryCredentialsId 'dockerhub'
    }
  }
  stages {
    stage('Cucumber Tests') {
      steps{
        sh 'cucumber --format json -o results.json --publish-quiet'
      }
    }
  }
  post {
    cleanup {
      cleanWs()
    }
  }
}
