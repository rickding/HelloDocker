FROM kalilinux/kali-rolling:latest

# COPY ./sources.list /etc/apt/

RUN apt update; \
    apt upgrade; \
    apt -y install metasploit-framework; \
    apt -y install net-tools; \
    apt -y install aircrack-ng; \
    apt -y install reaver; \
    apt -y install build-essential libpcap-dev pixiewps \

# EXPOSE 22
