from flask import Flask

from redis import Redis

app = Flask(__name__)
redis = Redis(host="cache", port=6379)


@app.route("/")
def hello():
    try:
        c = redis.incr('hits')
    except Exception as e:
        c = str(e)

    return 'hello world from docker service! count: {}'.format(c)


if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True)
