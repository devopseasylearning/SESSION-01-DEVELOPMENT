pipeline {
    agent any

      environment {
        USERNAME = 'devopseasylearning2021'
        
    }
    options { buildDiscarder(logRotator(artifactDaysToKeepStr: '', 
    artifactNumToKeepStr: '', daysToKeepStr: '3', numToKeepStr: '5'))
    disableConcurrentBuilds() }

    stages {
        stage('Build images') {
            steps {
                sh '''
                docker build -t johnathan:001 .
                '''
            }
        }


    stage('Tag image') {
            steps {
                sh '''
                docker tag johnathan:001 devopseasylearning2021/ducobu:001
                '''
            }
        }




    stage('Docker login'){
            steps {

                script {

                     withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'password', usernameVariable: 'username')]){
                         sh '''
                            echo "${password} | docker login -u ${username} --password-stdin"
                         '''

                     }
                }
            }
        }



    stage('Docker push') {
            steps {
                sh '''
                docker push devopseasylearning2021/ducobu:001
                '''
            }
        }



    }

}


