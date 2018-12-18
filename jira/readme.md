# jira
https://mshk.top/2018/11/docker-jira-core-software-7-12-3/
https://github.com/idoall/docker/tree/master/ubuntu16.04-jira-software

service jira stop
mv /opt/atlassian/jira/atlassian-jira/WEB-INF/lib/atlassian-extras-3.2.jar /opt/atlassian/jira/atlassian-jira/WEB-INF/lib/atlassian-extras-3.2.jar.bak
cp /usr/src/_jira/atlassian-extras-3.2.jar /opt/atlassian/jira/atlassian-jira/WEB-INF/lib/atlassian-extras-3.2.jar

mv /opt/atlassian/jira/atlassian-jira/WEB-INF/atlassian-bundled-plugins/atlassian-universal-plugin-manager-plugin-2.22.9.jar /opt/atlassian/jira/atlassian-jira/WEB-INF/atlassian-bundled-plugins/atlassian-universal-plugin-manager-plugin-2.22.9.jar.bak
cp /usr/src/_jira/atlassian-universal-plugin-manager-plugin-2.22.9.jar /opt/atlassian/jira/atlassian-jira/WEB-INF/atlassian-bundled-plugins/atlassian-universal-plugin-manager-plugin-2.22.9.jar
service jira start

docker exec jira_jira-software_1 sh -c 'service jira stop;mv /opt/atlassian/jira/atlassian-jira/WEB-INF/lib/atlassian-extras-3.2.jar /opt/atlassian/jira/atlassian-jira/WEB-INF/lib/atlassian-extras-3.2.jar.bak;cp /usr/src/_jira/atlassian-extras-3.2.jar /opt/atlassian/jira/atlassian-jira/WEB-INF/lib/atlassian-extras-3.2.jar;mv /opt/atlassian/jira/atlassian-jira/WEB-INF/atlassian-bundled-plugins/atlassian-universal-plugin-manager-plugin-2.22.9.jar /opt/atlassian/jira/atlassian-jira/WEB-INF/atlassian-bundled-plugins/atlassian-universal-plugin-manager-plugin-2.22.9.jar.bak;cp /usr/src/_jira/atlassian-universal-plugin-manager-plugin-2.22.9.jar /opt/atlassian/jira/atlassian-jira/WEB-INF/atlassian-bundled-plugins/atlassian-universal-plugin-manager-plugin-2.22.9.jar;service jira start'

# image
idoall/mysql:5.7
idoall/ubuntu16.04-jira-software:7.12.3

cptactionhank/atlassian-jira-software:7.12.3
