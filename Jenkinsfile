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
    always {
      cucumber buildStatus: 'FAILURE', customCssFiles: '', customJsFiles: '', failedFeaturesNumber: -1, failedScenariosNumber: -1, failedStepsNumber: 1, fileIncludePattern: '**/results.json', pendingStepsNumber: -1, reportTitle: 'Cucumber Template', skippedStepsNumber: -1, sortingMethod: 'ALPHABETICAL', undefinedStepsNumber: -1
      livingDocs featuresDir: '', format: 'ALL'
    }
    cleanup {
      cleanWs()
    }
  }
}
