pipeline {
    agent any
    tools{
        maven 'MAVEN3'
    }
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout your source code repository
                // Replace the repository URL and credentials with your own
                git branch: 'main', url: 'https://github.com/sharmaranupama/liquibase_demo.git'
                sh 'pwd'
                sh 'ls -ltr'
            }
        }
        
       
        stage('liquibase migrate') {
            steps {
                // Build your Maven project and execute Liquibase commands
                // Replace 'my-maven-project' with your Maven project name
                
                    // Replace 'mvn' with the path to your Maven installation if necessary
                   
                    sh ' mvn -e liquibase:update  -D liquibase.url=jdbc:postgresql://localhost:5432/postgres -D liquibase.username=postgres -D liquibase.password=postgres'
                 
            }
        }
        stage('liquibase status') {
            steps {
                // Build your Maven project and execute Liquibase commands
                // Replace 'my-maven-project' with your Maven project name
                
                    // Replace 'mvn' with the path to your Maven installation if necessary
                   
                    sh ' mvn -e liquibase:status  -D liquibase.url=jdbc:postgresql://localhost:5432/postgres -D liquibase.username=postgres -D liquibase.password=postgres'
                 
            }
        }
         
    }
}
