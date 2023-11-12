#récupération de la base 
FROM alpine:latest
VOLUME [ "/tmp/web" ]
EXPOSE 80

#install des packet requis
RUN apk update \
&& apk add --no-cache apache2 php81-apache2 git

#récupération de dvwa

RUN mkdir -p /var/www/localhost/htdocs \
&& cd /var/www/localhost/htdocs \
&& git clone https://github.com/digininja/DVWA.git

#copy des fichier de conf.
COPY dvwa.conf /etc/apache2/conf.d/dvwa.conf
COPY config.inc.php.dist /var/www/localhost/htdocs/DVWA/config/config.inc.php

CMD ["httpd", "-D", "FOREGROUND"]
