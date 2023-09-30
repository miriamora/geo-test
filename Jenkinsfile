pipeline {
    agent any
    stages {
        stage ("maven clean") {
            steps{
                sh "mvn clean"
            }
        }
        stage ("maven install") {
            steps {
                sh "mvn install"
                sh "echo install completed"
            }
        }
        stage ("maven package") {
            steps {
                sh "mvn package"
            }
        }
    }
}

