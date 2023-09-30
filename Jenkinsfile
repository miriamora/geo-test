pipeline {
    agent any
    tools{
        maven 'M2_HOME'
    }
    stages {
        stage ("maven clean") {
            steps{
                sh 'mvn clean' 
            }
        }
        stage ("maven install") {
            steps {
                sh 'mvn install'
            }
        }
        stage ("maven package") {
            steps {
                sh 'mvn package'
            }
        }
        stage ("upload artifacts") {
            steps {
                nexusArtifactUploader artifacts: [[artifactId: 'bioMedical-0.0.2', 
                classifier: '', file: 'target/bioMedical-0.0.2-SNAPSHOT.jar', 
                type: 'jar']], credentialsId: 'nexusID', groupId: 'QA', 
                nexusUrl: 'http://198.58.119.40:8081/', nexusVersion: 'nexus3', 
                protocol: 'http', 
                repository: 'http://198.58.119.40:8081/#admin/repository/repositories:MirOra', 
                version: '002'
            }
        }
    }
}

