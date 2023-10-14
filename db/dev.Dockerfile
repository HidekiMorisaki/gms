FROM mariadb:11.1.2-jammy

RUN touch /var/log/mysql/mysqld.log
ADD my.cnf /etc/mysql/conf.d/my.cnf
ADD initial.sql /docker-entrypoint-initdb.d
RUN chmod 644 /etc/mysql/my.cnf