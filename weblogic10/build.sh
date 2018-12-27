#!/bin/bash

cd ../../HelloJava/HelloWar/
./package.sh

cd ../HelloWebWar/
./package.sh

cd ../../HelloDocker/weblogic10

cp ../../HelloJava/HelloWar/target/war-0.0.1-SNAPSHOT.war ./webapps
cp ../../HelloJava/HelloWebWar/target/web_war-0.0.1-SNAPSHOT.war ./webapps

cp ../../HelloJava/HelloEar/ear.ear ./webapps
cp ../../nx/ams-web/target/ams.war ./webapps

docker-compose build
