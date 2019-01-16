# jira
https://mshk.top/2018/11/docker-jira-core-software-7-12-3/
https://github.com/idoall/docker/tree/master/ubuntu16.04-jira-software

# hack
service jira stop
mv /opt/atlassian/jira/atlassian-jira/WEB-INF/lib/atlassian-extras-3.2.jar /opt/atlassian/jira/atlassian-jira/WEB-INF/lib/atlassian-extras-3.2.jar.bak
cp /usr/src/_jira/atlassian-extras-3.2.jar /opt/atlassian/jira/atlassian-jira/WEB-INF/lib/atlassian-extras-3.2.jar

mv /opt/atlassian/jira/atlassian-jira/WEB-INF/atlassian-bundled-plugins/atlassian-universal-plugin-manager-plugin-2.22.9.jar /opt/atlassian/jira/atlassian-jira/WEB-INF/atlassian-bundled-plugins/atlassian-universal-plugin-manager-plugin-2.22.9.jar.bak
cp /usr/src/_jira/atlassian-universal-plugin-manager-plugin-2.22.9.jar /opt/atlassian/jira/atlassian-jira/WEB-INF/atlassian-bundled-plugins/atlassian-universal-plugin-manager-plugin-2.22.9.jar
service jira start

docker exec jira_jira-software_1 sh -c 'service jira stop;mv /opt/atlassian/jira/atlassian-jira/WEB-INF/lib/atlassian-extras-3.2.jar /opt/atlassian/jira/atlassian-jira/WEB-INF/lib/atlassian-extras-3.2.jar.bak;cp /usr/src/_jira/atlassian-extras-3.2.jar /opt/atlassian/jira/atlassian-jira/WEB-INF/lib/atlassian-extras-3.2.jar;mv /opt/atlassian/jira/atlassian-jira/WEB-INF/atlassian-bundled-plugins/atlassian-universal-plugin-manager-plugin-2.22.9.jar /opt/atlassian/jira/atlassian-jira/WEB-INF/atlassian-bundled-plugins/atlassian-universal-plugin-manager-plugin-2.22.9.jar.bak;cp /usr/src/_jira/atlassian-universal-plugin-manager-plugin-2.22.9.jar /opt/atlassian/jira/atlassian-jira/WEB-INF/atlassian-bundled-plugins/atlassian-universal-plugin-manager-plugin-2.22.9.jar;service jira start'

# data
chown -R 999 ./data/mysql
chown -R 1000 ./data/jira

docker exec -it jira_jira_1 bash
cat /etc/group  # 1000

chown -R jira:jira /var/atlassian/application-data

# image
idoall/ubuntu16.04-jira-software:7.12.3
cptactionhank/atlassian-jira-software:7.12.3

# license
BG7M-GSVI-MBR9-3L5U
AAABcg0ODAoPeNp9UUtvgkAQvvMrSHppD0sAaysmJK2wMTSgRtBTL1scdRsEMrtY/fddAVOtj+O3O/O95iFZV7oPqW6bumn2ree+/ap7caKw1dNWCJCvi7IENEKeQi6ALrjkRe7SUUKnk2kQU21Ubb4Ax8uZABQusTSvyCVL5YhtwN1n5WKXva02jGdGWmy0b47MuFiZVJiumQCfSXAP2sSyiW1qrWqyL6Gm88ZRRKde8B4ev+iu5Lg/7jnEtIjlHC3QSMleeogBt4CB7w6GrxEZxvOARIOpQzphd9YYLLFYVKk0DoCIYil/GIKhGPkWXIkVNGO3S7lS3bUQyl8uIWd5eiPIHTcXJbY6KlcY+DEdkdCye52u82JpCrnnL3eIY8lQArpLlgnQxrhiOResTiiF1DyEGvy/VdbIz5Wbw6h91gGomFgiF219PogUeVmTfih1PW7V9cfmOk+ffZ1uWVbVWo3dW/1fa/ZU/HTvj7PBv5WhB6wwLAIUNzgo+GiF/qf7sNrHWj01GozMMCQCFE4uMVjcB330F1Qy/M5hmwpNmF6yX02i2

admin/123456
