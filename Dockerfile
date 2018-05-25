#Image base
FROM ubuntu
RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y git

WORKDIR /var/www/html
RUN git clone git://github.com/anperezp/hello-html


ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
