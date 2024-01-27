pipeline{

    agent any

    stages{

        stage('sonar quality check'){

            agent{
                
                Docker{

                    image 'maven'
                    args '-u root'
                }
            }

            steps{

                script{

                       withSonarQubeEnv(credentialsId: 'sonar-token'){

                        sh 'mvn clean package sonar:sonar'
                       
                    }



                }
            }
        }
    }
}

    
                
                  

        