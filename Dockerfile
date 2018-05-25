#Image base
FROM ubuntu
RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y git
RUN git clone git://github.com/anperezp/Ordinario_Jenkins

WORKDIR /var/www/html
COPY index.html index.html


ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
