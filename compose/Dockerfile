FROM python:3

ADD . /code
WORKDIR /code

RUN pip install -i http://pypi.douban.com/simple --trusted-host pypi.douban.com -r requirements.txt

CMD ["python", "app.py"]
