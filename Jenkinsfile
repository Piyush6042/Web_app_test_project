pipeline {
    agent any 
        stage('Docker build image') { 
            steps {
                sh "docker build -t piyush6042/web_app:$(BUILD_NUMBER) ." 
            }
        }
        stage('Docker hub login') { 
            steps {
                withCredentials([string(credentialsId: 'dockerhub11', variable: 'dockerpwd')])
                sh "docker login -u piyush6042 -p ${dockerpwd}" 
            }
        }
        stage('Push image to Docker hub') { 
            steps {
                sh "docker push piyush6042/web_app:$(BUILD_NUMBER)" 
            }
        }


    }
}
