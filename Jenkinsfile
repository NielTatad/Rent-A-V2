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
  }
} 