#!/bin/bash
clear

docker build -t python-app .

docker run -it --rm --name python-app python-app
