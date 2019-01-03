# weblogic12 ubuntu 18.04
https://blog.csdn.net/renfengjun/article/details/78581600
https://github.com/oracle/docker-images/tree/master/OracleWebLogic
https://blog.csdn.net/magi1201/article/details/46280507

docker login
docker pull store/oracle/weblogic:12.2.1.2

docker run -d -p 7001:7001 store/oracle/weblogic:12.2.1.2
docker logs container_id | grep password
http://127.0.0.1:7001/console
weblogic/***

# https://www.cnblogs.com/DFX339/p/8493314.html
ismaleiva90/weblogic12
registry.cn-shanghai.aliyuncs.com/hellodock/weblogic12

http://127.0.0.1:7001/console
weblogic/welcome1

# jar conflicts
https://blog.csdn.net/blossomfzq/article/details/80651692
https://shuwen.iteye.com/blog/1124220
https://yq.aliyun.com/ziliao/422573

# mysql
drop database if exists ams;
create database if not exists ams DEFAULT CHARSET utf8 COLLATE utf8_general_ci;
