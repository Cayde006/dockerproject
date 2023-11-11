FROM mysql:latest
VOLUME [ "/tmp/database" ]
EXPOSE 3306
ENV MYSQL_ROOT_PASSWORD=N3twork!

# Définissez le jeu de caractères et le collate par défaut pour MySQL
ENV MYSQL_DATABASE=dvwa \
    MYSQL_USER=dvwa \
    MYSQL_PASSWORD=network \
    MYSQL_CHARSET=utf8mb4 \
    MYSQL_COLLATION=utf8mb4_unicode_ci

CMD ["mysqld"]