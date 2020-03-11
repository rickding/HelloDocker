# ftp
https://github.com/rickding/HelloDocker/tree/master/ftp

docker run -d -v /home/vsftpd:/home/vsftpd -p 20:20 -p 21:21 -p 21100-21110:21100-21110 -e FTP_USER=test -e FTP_PASS=test --name vsftpd fauria/vsftpd

# client
https://github.com/rickding/HelloJava/tree/master/HelloFtp
