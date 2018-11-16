drop database if exists jira;

create database jira default character set utf8 collate utf8_bin;
CREATE USER `jira`@`%` IDENTIFIED BY 'jira';GRANT ALL ON *.* TO `jira`@`%` WITH GRANT OPTION;
alter user 'jira'@'%' identified with mysql_native_password by 'jira';

set global transaction isolation level read committed;
set session transaction isolation level read committed;
