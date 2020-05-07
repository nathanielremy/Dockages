/*pipeline{
    agent any
    tools {
        go {'go-1.14'}
        }

    stages {
        stage('Build') { 
            steps{
                sh 'go build'
            }
        }        
        stage('Publish artifact') {
            steps{
                archiveArtifacts 'myGo2HWmoms_master'
            }
        }
    }
}*/

///////////////
pipeline {
  environment {
    registry = "Nathanielremy/Dockages"
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
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
    stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
    /*stage('Remove Unused docker image') {
      steps{
        sh "docker rmi $registry:$BUILD_NUMBER"
      }*/
    }
  }
}
