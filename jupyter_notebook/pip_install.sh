#!/bin/bash
python -m pip install -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com --upgrade pip

# pip source https://blog.csdn.net/gzhouc/article/details/65448350
# http://pypi.douban.com/simple
# http://mirrors.aliyun.com/pypi/simple/
pip install -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com -r requirements.txt
