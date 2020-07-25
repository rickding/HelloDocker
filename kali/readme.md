# kali
https://www.kali.org/news/official-kali-linux-docker-images/

docker pull kalilinux/kali-rolling:latest
docker run -t -i --name kali kalilinux/kali-rolling /bin/bash
apt update && apt -y install metasploit-framework

# wifi
https://blog.csdn.net/qq_34489091/article/details/80229477
https://www.cnblogs.com/diligenceday/p/6344698.html?utm_source=itdadao&utm_medium=referral
https://aquilao.github.io/Blog/Breaking_a_WPS_PIN_to_Get_the_Password_with_Bully/

ifconfig
iwconfig

airmon-ng

airmon-ng start wlan0

airodump-ng wlan0mon

reaver -i wlan0mon -b BSSID -vv

reaver -i wlan0mon -b xx:xx -p ping -vv

bully mon0 -b BSSID -e ESSID -c channel
