pipeline{

    agent any

    stages{

        stage('sonar quality check'){

            agent{

                docker {
                    image 'maven'
                    arg "u root"
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
    }
}

    