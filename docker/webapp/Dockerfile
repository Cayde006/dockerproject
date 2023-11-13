#récupération de la base 
FROM alpine:latest
VOLUME [ "/tmp/web" ]
EXPOSE 80

#install des packet requis
RUN apk update \
&& apk add --no-cache apache2 php81-apache2 php81-session php81-mysqli php81-pdo php81-pdo_mysql php81-gd git\
&& rm /etc/apache2/conf.d/default.conf\
&& mkdir -p /run/apache2\
&& rm /var/www/localhost/htdocs/index.html


#récupération de dvwa

RUN git clone https://github.com/digininja/DVWA.git \
  && mv /DVWA/* /var/www/localhost/htdocs\
  && chmod 777 /var/www/localhost/htdocs/hackable/uploads/\
  && chmod 777 /var/www/localhost/htdocs/config


#copy des fichier de conf.
COPY dvwa.conf /etc/apache2/sites-available/dvwa.conf
COPY config.inc.php.dist /var/www/localhost/htdocs/config/config.inc.php
COPY php.ini /etc/php81/php.ini
CMD ["httpd", "-D", "FOREGROUND"]
