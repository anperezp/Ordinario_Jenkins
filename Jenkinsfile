pipeline {
  agent any
  stages {
    stage('Conf Init') {
      steps {
        sh '''if [ -d "Ordinario_Jenkins" ]; then
rm -R Ordinario_Jenkins
fi'''
      }
    }
    stage('Git') {
      steps {
        sh 'docker build -t guiraofan .'
      }
    }
    stage('Container') {
      steps {
        sh 'docker run -dit -p 8082:80 guiraofan'
      }
    }
  }
}