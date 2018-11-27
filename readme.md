# Docker doc and images
https://docs.docker.com/
http://hub.docker.com
https://github.com/docker-library/docs

- Setup env
- Containers: Build image and run a container
- Services: Scale to run multiple containers
- Swarms: Distribute across a cluster
- Stacks: Stack service with a backend db
- Deploy to production


# Docker swarm, node, service
https://www.cnblogs.com/franknihao/p/8490416.html


# Accelerate
http://www.cnblogs.com/wushuaishuai/p/9984228.html

mkdir -p /etc/docker
sudo tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["http://hub-mirror.c.163.com"]
}

Or: vim /usr/lib/systemd/system/docker.service
Add the sentence:
ExecStart=/usr/bin/dockerd --registry-mirror=http://hub-mirror.c.163.com

Restart docker:
systemctl daemon-reload
systemctl restart docker


# docker for windows
Set-NetConnectionProfile -interfacealias "vEthernet (DockerNAT)" -NetworkCategory Private


# Docker compose
https://www.cnblogs.com/neptunemoon/p/6512121.html
https://www.jianshu.com/p/2217cfed29d7

pip install -i http://pypi.douban.com/simple --trusted-host pypi.douban.com docker-compose

alias dcmp=docker-compose


# Docker
https://yq.aliyun.com/articles/625340
https://www.cnblogs.com/huangaojiao/p/9159772.html
https://blog.csdn.net/whan8080/article/details/80150970

apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
apt-key fingerprint 0EBFCD88

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  xenial  stable"

apt-get update
apt-get -y install docker-ce


# snap
snap install docker


# Images & containers
docker version
docker info
docker images
docker ps

docker run hello-world
docker run -it ubuntu bash
docker run docker/whalesay cowsay boo


# Dockerfile:
https://www.cnblogs.com/dazhoushuoceshi/p/7066041.html
https://www.cnblogs.com/lighten/p/6900556.html
https://www.cnblogs.com/linjj/p/5606911.html

- cd HelloDocker
- mkdir dockerfile && cd dockerfile
- touch Dockerfile && vim Dockerfile

FROM docker/whalesay:latest
RUN apt-get -y update && apt-get install -y fortunes
CMD /usr/games/fortune -a | cowsay

- docker build -t docker-whale .
- docker images
- docker run docker-whale


# Ubuntu owner and user group
ls -la /home/data
cat /etc/group
chown -R 999 /home/data


# JDK
https://blog.csdn.net/qq_29695701/article/details/77454395


# VPN
https://yq.aliyun.com/articles/625340
https://github.com/getlantern/forum
