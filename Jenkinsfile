pipeline {
  environment {
    registry = "nathanielremy/dockages"
    registryCredential = 'dockerhub'
    dockerImage = ''
  }
  agent any
  stages {
    stage('Cloning Git') {
      steps {
        git 'https://github.com/nathanielremy/Dockages.git'
      }
    }
    stage('Building artifact') {
      steps{
        
      }
    }
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
    stage('Deploying image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
    /*stage('Remove unused docker image') {
      steps{
        sh "docker rmi $registry:$BUILD_NUMBER"
      }
    }*/
  }
}
