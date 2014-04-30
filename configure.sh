#!/bin/bash

# allow connections from other containers
echo "bind-address = 0.0.0.0" >> /etc/mysql/my.cnf

# start mysql
/usr/bin/run &
sleep 5

# allow root to login from remote systems
echo "GRANT ALL ON *.* TO root@'%' IDENTIFIED BY '' WITH GRANT OPTION; FLUSH PRIVILEGES" | mysql
