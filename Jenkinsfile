pipeline{
    agent any

    stages{
        stage('Git Checkouting and Pulling code'){
            steps{
                echo 'Pulling Code From Github'
               
                git branch: 'main', credentialsId: 'Software-prod-token', url: 'https://github.com/Thanhlam43k4/Big-Project-CI-CD-Software-on-Production.git'

                echo 'Pulling successfully'
            }
        }
        stage('Testing'){
            steps{
                echo 'Testing code .....'
            }
        }
        stage('Build Docker image and push to DockerHub'){
            steps{
                echo 'Build docker Image in file Dockerfile' //File Dockerfile in the dir of source code
                //Docker command
                sh 'docker build -t thanhlam2k4/loginapp:3.0 .' //In my case thanhlam2k4 is my dockerhub account you can change!!!
                //You can run docker image anh check your images in your local machine

                sh 'docker images'
                withDockerRegistry(credentialsId: 'dockerhub_id',url: 'https://index.docker.io/v1/') {
                    //Push to Dockerhub with dockerhub account thanhlam2k4
                    sh 'docker push thanhlam2k4/loginapp:3.0'
                }
            }            
        }
        stage('Deploy to Production in Kubernetes'){
            
        }
    }
}