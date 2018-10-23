# server and docker
https://github.com/docker-library/docs/tree/master/mysql
https://www.cnblogs.com/cfrost/p/6241892.html

# volume permission
https://blog.csdn.net/grape875499765/article/details/80089853

docker exec -it mysql_db_1 bash
ls -la /var/lib/mysql  # mysql
cat /etc/group  # 999

ls -la /data/work/HelloDocker/mysql/data
chown -R 999 /data/work/HelloDocker/mysql/data

# mysql client
https://www.cnblogs.com/zhuyp1015/p/3561470.html

# conf
https://www.jb51.net/article/148546.htm
https://dev.mysql.com/doc/refman/8.0/en/server-system-variables.html

# localhost vs 127.0.0.1
https://www.cnblogs.com/zhao123h/p/5207622.html
