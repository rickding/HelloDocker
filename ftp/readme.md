# ftp
https://www.jianshu.com/p/e51fe1975c29

docker run -d -v /home/vsftpd:/home/vsftpd -p 20:20 -p 21:21 -p 21100-21110:21100-21110 -e FTP_USER=test -e FTP_PASS=test --name vsftpd fauria/vsftpd

# client
http://www.cnblogs.com/amoyzhu/p/9197500.html
