# Docker doc and images
https://docs.docker.com/
http://hub.docker.com
https://github.com/docker-library/docs

- Setup env
- Containers: Build image and run a container
- Swarms: Distribute across a cluster
- Stacks: Stack service with a backend db
- Services: Scale to run multiple containers


# Accelerate
https://www.docker-cn.com/registry-mirror
https://registry.docker-cn.com

mkdir -p /etc/docker
sudo tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["https://registry.docker-cn.com"]
}

service docker restart


# docker for windows
Set-NetConnectionProfile -interfacealias "vEthernet (DockerNAT)" -NetworkCategory Private


# Docker compose
pip install -i http://pypi.douban.com/simple --trusted-host pypi.douban.com docker-compose
alias dcmp=docker-compose


# Docker
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


# Ubuntu owner and user group
ls -la /home/data
cat /etc/group
chown -R 999 /home/data


# VPN
https://yq.aliyun.com/articles/625340
https://github.com/getlantern/forum

# scp
scp root@172.19.2.75:/tmp/aa.rpm /tmp/

scp ./jdk1.7.0_121.tar.gz root@192.168.1.222:/root
scp ./wls1036_generic.jar root@192.168.1.222:/root

scp root@192.168.1.222:/home/weblogic/Oracle/Middleware/user_projects/domains/base_domain/log.txt ./
