# ubuntu
https://www.cnblogs.com/lienhua34/p/5170335.html
https://github.com/docker-library/docs/tree/master/ubuntu

docker pull ubuntu:18.04

docker run --rm --name ubuntu -p32:22 ubuntu:18.04.local grep -v '^#' /etc/apt/sources.list
