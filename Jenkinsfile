pipeline {
    agent any 
     stages {
        stage('Docker build image') { 
            steps {
                sh "docker build . -t piyush6042/web_app:${BUILD_NUMBER} ." 
            }
        }
        stage('Docker hub login') { 
            steps {
                withCredentials([string(credentialsId: 'dockerhub13', variable: 'dockerpass')]) {
                sh "docker login -u piyush6042 -p ${dockerpass}"
                }
            }
        }
        stage('Push image to Docker hub') { 
            steps {
                sh "docker push piyush6042/web_app:${BUILD_NUMBER}" 
            }
        }
                 stage('Deploy container') { 
            steps {
                sh "docker run -itd -p 8081:8080 piyush6042/web_app:${BUILD_NUMBER}" 
            }
        }

     }
    }

