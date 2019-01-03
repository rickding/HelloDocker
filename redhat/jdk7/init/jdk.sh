#!/bin/bash

java -version

yum repolist all
yum search java | grep jdk

yum install java-1.7.0-openjdk*

java-version
