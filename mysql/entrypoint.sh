#!/bin/bash

if [ ! "$(ls -A /var/lib/mysql)" ]; then
    /usr/bin/mysql_install_db
fi

/etc/init.d/mysql start
/usr/bin/mysqladmin -u root -h `hostname` password '123456'
/usr/bin/mysqladmin -u root password '123456'

mysql -u root -p123456 -e "CREATE DATABASE ${PROJECT_NAME} CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci"
mysql -u root -p123456 -e "DROP USER '${PROJECT_NAME}'@'%'"
mysql -u root -p123456 -e "CREATE USER '${PROJECT_NAME}'@'%' IDENTIFIED BY '123456'"
mysql -u root -p123456 -e "GRANT ALL PRIVILEGES ON ${PROJECT_NAME}.* TO '${PROJECT_NAME}'@'%'"
mysql -u root -p123456 -e "DROP USER '${PROJECT_NAME}'@'localhost'"
mysql -u root -p123456 -e "CREATE USER '${PROJECT_NAME}'@'localhost' IDENTIFIED BY '123456'"
mysql -u root -p123456 -e "GRANT ALL PRIVILEGES ON ${PROJECT_NAME}.* TO '${PROJECT_NAME}'@'localhost'"
mysql -u root -p123456 -e "FLUSH PRIVILEGES"

while true ; do sleep 5; done;
