pipeline{

    agent any

    stages{

        stage('sonar quality check'){

            agent{

                docker {
                    image 'maven'
                    args '-u root'
                }
            }
            steps{
                
                script{

                    withSonarQubeEnv(credentialsId: 'sonar-token') {
                   
                   sh 'mvn clean package sonar:sonar'
                 }
                }
            }
        }
        stage('quality gate status'){

            steps{

                script{
                    
                    waitForQualityGate abortPipeline: false, credentialsId: 'sonar-token'
                }
            }
        }
    }
}

    