pipeline {
  agent any

  stages {
    stage('Wait') {
      steps {
        echo 'Waiting for 1 minute...'
        sleep time: 1, unit: 'MINUTES'
      }
    }
    stage('Terraform Format Check') {
      steps {
        sh 'terraform fmt -check -recursive'
      }
    }
    stage('Terraform Init') {
      steps {
        sh 'terraform init'
      }
    }
    stage('Terraform Validate') {
      steps {
        sh 'terraform validate'
      }
    }
    stage('Docker Build and Push') {
      steps {
        script {
          sh 'docker build -t kingdevops/rent-a-v2-terraform:latest .'
          withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
            sh 'echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin'
            sh 'docker push kingdevops/rent-a-v2-terraform:latest'
          }
        }
      }
    }
  }
} 