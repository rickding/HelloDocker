# oracle sqlplus

sqlplus sys/123 as sysdba
sqlplus scott/tiger

show user;

show parameter instance_name;

show all;

select username from dba_users;

select username from dba_users where username like '%SYS%';

select username from dba_users where username like "%SYS%";

create tablespace test datafile 'test.dbf' size 100M;

create user ouser identified by ouser default tablespace test;

grant connect,resource to ouser;

grant dba to ouser;

alter user ouser identified by 123456;

alter user scott ifentified by triger;
