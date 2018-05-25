pipeline {
  agent any
  stages {
    stage('Conf Init') {
      steps {
        sh '''if [ -d "OrdinarioParadigmas" ]; then
rm -R Ordinario_Jenkins
fi'''
        sh 'docker stop $(docker ps -aq)'
        sh 'docker rm $(docker ps -aq)'
        sh 'docker rmi guiraofan'
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