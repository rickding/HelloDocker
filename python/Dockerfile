FROM python:3

WORKDIR /usr/src/app

# install
COPY requirements.txt ./
# RUN pip install --no-cache-dir -r requirements.txt

RUN pip install -i http://pypi.douban.com/simple --trusted-host pypi.douban.com --no-cache-dir -r requirements.txt

# copy files
COPY . .

# launch service
CMD ["python", "hello.py"]
