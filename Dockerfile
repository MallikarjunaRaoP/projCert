FROM devopsedu/webapp:latest

COPY website /var/www/html/

RUN apt-get update -y

RUN DEBIAN_FRONTEND=noninteractive apt-get install php -y

CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
