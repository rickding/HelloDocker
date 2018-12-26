#!/bin/bash

cp ../../HelloJava/HelloWar/target/war-0.0.1-SNAPSHOT.war ./war.war
cp ../../HelloJava/HelloWebWar/target/web_war-0.0.1-SNAPSHOT.war ./web.war

docker-compose build
