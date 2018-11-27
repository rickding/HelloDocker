# service, swarm, stack
https://docs.docker.com/get-started/part3/

docker stack ls
docker stack deploy -c docker-compose.yml srv
docker service ls
docker service ps srv

# compose
https://www.cnblogs.com/senlinyang/p/8856975.html
https://blog.csdn.net/pushiqiang/article/details/78682323

# install
apt-get install docker-compose

# run
docker-compose up

# server
http://127.0.0.1:5000/

# cmds
docker-compose build
docker-compose config

docker-compose images
docker-compose rm

docker-compose stop
docker-compose start
docker-compose restart

docker-compose up
docker-compose down
docker-compose ps
docker-compose kill

docker-compose top
docker-compose port

docker-compose scale
docker-compose run
docker-compose exec
docker-compose logs
