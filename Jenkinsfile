pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        git(url: 'https://github.com/Silfaeron/AI03_project.git', branch: 'master')
      }
    }
    stage('SonarQ Analysis') {
      steps {
        sh '''def scannerHome = tool \'SonarQube Scanner 3.2\';
    withSonarQubeEnv(\'SonarQ-Openshift\') {
      sh "${scannerHome}/bin/sonar-scanner"'''
      }
    }
    stage('Deploy') {
      steps {
        sh './deploy.sh'
      }
    }
  }
}