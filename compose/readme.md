# swarm, stack, service
https://docs.docker.com/get-started/part3/

docker swarm init
docker swarm join-token manager/worker
docker swarm leave --force

docker swarm join --token SWMTKN-1-1vc0o3laoapznkeb4fustp1s1qtsl5ckfnpi1sfhomwhyhrxnh-ayokpnozz4qjy10chhfgju87w 192.168.65.3:2377

docker swarm join --token SWMTKN-1-2plozud3pnf71zw5qmbsczqxuws1fvg5s6a6v7ff775zt0l2et-1rxsv7uxnnzuqgtvlpin2ol1m 192.168.1.157:2377
docker swarm join --token SWMTKN-1-2plozud3pnf71zw5qmbsczqxuws1fvg5s6a6v7ff775zt0l2et-33shh191vioave3f8n8ac6q8t 192.168.1.157:2377

docker stack deploy -c docker-compose.yml srv
docker stack ls
docker stack rm srv

docker service ls
docker service ps srv_web

docker ps
docker inspect srv_cache
docker container ls -q

# node
docker node ls
docker node ps

docker node rm u2
docker node inspect u2 --pretty
docker node update --label-add group=db u2 # node.labels.group==db

# filter
constraint:
node.role == manager
node.labels.group == db
node.labels.group == task
node.hostname == web_1

# machine
docker-machine create --driver virualbox vm1
docker-machine create --driver virualbox vm2

docker-machine ls
docker-machine start vm1

docker-machine ssh vm1 "docker swarm init --advertise-addr <vm1 ip>"
docker-machine ssh vm2 "docker swarm join --token <token> <ip>:2377"
docker-machine ssh vm1 "docker node ls"

docker-machine env vm1
eval $(docker-machine env vm1)

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
