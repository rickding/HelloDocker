#Docker compose
https://www.cnblogs.com/neptunemoon/p/6512121.html

pip install -i http://pypi.douban.com/simple --trusted-host pypi.douban.com docker-compose

alias cmps=docker-compose


# Docker
https://yq.aliyun.com/articles/625340
https://www.cnblogs.com/huangaojiao/p/9159772.html
https://blog.csdn.net/whan8080/article/details/80150970

which curl
apt-get update
apt-get install curl

apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
apt-key fingerprint 0EBFCD88

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  xenial  stable"

apt-get update
apt-get -y install docker-ce


# snap
snap install docker


# Images
docker version
docker images

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


# JDK
https://blog.csdn.net/qq_29695701/article/details/77454395


# VPN
https://yq.aliyun.com/articles/625340
https://github.com/getlantern/forum
