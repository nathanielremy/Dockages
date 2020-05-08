pipeline {
	agent any
    tools {
        go {'go'}
        }
    stages {
	stage('test') { 
            steps{
                sh 'go test'
            }
        }        
        stage('Build') { 
            steps{
                sh 'go build'
            }
        }        
        stage('Publish artefact') {
            steps{
                archiveArtifacts 'myGo2HWmoms_master'
            }
        }
    }
}
