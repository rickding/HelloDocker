#!/bin/bash

gunzip < wget-1.20.tar.gz | tar -xv
cd wget-1.20

./configure
make
make isntall
