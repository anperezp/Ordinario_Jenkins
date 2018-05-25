pipeline {
  agent any
  stages {
    stage('Conf Init') {
      steps {
        sh 'sudo ./clean.sh'
      }
    }
    stage('Git') {
      steps {
        sh 'apt-get -y install git && rm -Rf hello-html'
        sh 'git clone https://github.com/anperezp/hello-html.git'
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