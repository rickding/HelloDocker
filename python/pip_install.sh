#!/bin/bash
python -m pip install -i http://pypi.douban.com/simple --trusted-host pypi.douban.com --upgrade pip

# pip source https://blog.csdn.net/gzhouc/article/details/65448350
pip install -i http://pypi.douban.com/simple --trusted-host pypi.douban.com -r requirements.txt
