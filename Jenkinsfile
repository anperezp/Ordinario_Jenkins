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
        sh './container.sh'
        sh './image.sh'
      }
    }
  }
}