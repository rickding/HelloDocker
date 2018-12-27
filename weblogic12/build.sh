#!/bin/bash

# war and springboot
cd ../../HelloJava/HelloWar/
./package.sh

cd ../HelloWebWar/
./package.sh

cd ../../HelloDocker/weblogic12

cp ../../HelloJava/HelloWar/target/war-0.0.1-SNAPSHOT.war ./webapps
cp ../../HelloJava/HelloWebWar/target/web_war-0.0.1-SNAPSHOT.war ./webapps

# ear
cp ../../HelloJava/HelloEar/ear.ear ./webapps

# ams
cd ../../nx/ams/
./package.sh
cd ../../HelloDocker/weblogic12
cp ../../nx/ams-web/target/ams.war ./webapps

docker-compose build
