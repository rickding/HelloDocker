# server and docker
https://github.com/docker-library/docs/tree/master/mysql
https://www.cnblogs.com/cfrost/p/6241892.html

# volume permission
https://blog.csdn.net/grape875499765/article/details/80089853

docker exec -it mysql_db_1 bash
ls -la /var/lib/mysql  # mysql
cat /etc/group  # 999

ls -la ./data
chown -R 999 ./data

# pip install mysqlclient error:
https://blog.csdn.net/qq_28218253/article/details/81068595?utm_source=blogxgwz1
ln -s /usr/local/mysql/bin/mysql_config /usr/local/bin/mysql_config

https://blog.csdn.net/wylycool/article/details/80243266 mysql-server
apt-get -y install mysql-client libmysqlclient-dev mytop

# mysql client
https://www.cnblogs.com/zhuyp1015/p/3561470.html

# conf
https://www.jb51.net/article/148546.htm
https://dev.mysql.com/doc/refman/8.0/en/server-system-variables.html

# localhost vs 127.0.0.1
https://www.cnblogs.com/zhao123h/p/5207622.html
