# django in docker
https://www.cnblogs.com/neptunemoon/p/6512121.html

# django with mysql
https://www.cnblogs.com/ianduin/p/8747746.html

# pip install mysqlclient error:
https://blog.csdn.net/qq_28218253/article/details/81068595?utm_source=blogxgwz1
ln -s /usr/local/mysql/bin/mysql_config /usr/local/bin/mysql_config

https://blog.csdn.net/wylycool/article/details/80243266
apt-get -y install mysql-server mysql-client libmysqlclient-dev  mytop

# django with nginx
https://www.jianshu.com/p/5f689e186aa5

# createsuperuser.sh
admin/superuser
root/superuser

# set owner as mysql
chown -R 999 ./data/
chown -R 999 ./conf/
chown -R 999 ./initdb/

docker exec -it django_in_docker_db_1 bash
ls -la /var/lib/mysql  # mysql
cat /etc/group  # 999
