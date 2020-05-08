pipeline {
	agent any
    tools {
        go {'go-1.14'}
        }
    stages {
	stage('set go env') { 
            steps{
                sh 'go env -w CGO_ENABLED=0'
            }
        } 
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
