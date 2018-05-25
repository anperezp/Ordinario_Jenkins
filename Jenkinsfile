pipeline {
  agent any
  stages {
    stage('Conf Init') {
      steps {
        sh '''if [ -d "Ordinario_Jenkins" ]; then
rm -R Ordinario_Jenkins
fi'''
        sh 'docker stop ordinario'
        sh 'docker rm -f ordinario'
      }
    }
    stage('Container') {
      steps {
        sh 'docker build -t guiraofan .'
      }
    }
    stage('Image') {
      steps {
        sh 'docker run -dit -p 8082:80 --name ordinario guiraofan'
      }
    }
  }
}