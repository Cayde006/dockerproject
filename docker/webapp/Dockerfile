#récupération de la base 
FROM alpine:latest
VOLUME [ "/tmp/web" ]
EXPOSE 80

#install des packet requis
RUN apk update \
&& apk add --no-cache apache2 php81-apache2 openrc git\
&& rm /etc/apache2/conf.d/default.conf\
&& mkdir -p /run/apache2\
&& mkdir -p /etc/apache2/sites-available\
&& mkdir -p /etc/apache2/sites-enabled

#récupération de dvwa

RUN git clone https://github.com/digininja/DVWA.git



#copy des fichier de conf.
COPY dvwa.conf /etc/apache2/sites-available/dvwa.conf
COPY config.inc.php.dist /DVWA/config/config.inc.php

RUN ln -s /etc/apache2/sites-available/dvwa.conf /etc/apache2/sites-enabled/


CMD ["httpd", "-D", "FOREGROUND"]
