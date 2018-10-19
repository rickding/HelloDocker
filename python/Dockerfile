FROM python:3

WORKDIR /usr/src/app

# install
COPY requirements.txt ./
# RUN pip install -r requirements.txt

# pip source https://blog.csdn.net/gzhouc/article/details/65448350
RUN pip install -i http://pypi.douban.com/simple --trusted-host pypi.douban.com -r requirements.txt

# copy files
COPY . .

# launch service
CMD ["python", "hello.py"]
