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
        sh 'apt-get -y install git'
        sh 'git clone https://github.com/anperezp/Ordinario_Jenkins.git'
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
