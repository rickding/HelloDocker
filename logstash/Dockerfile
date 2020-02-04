FROM docker.elastic.co/logstash/logstash:7.5.2

# config
RUN rm -f /usr/share/logstash/pipeline/logstash.conf
ADD logstash.conf /usr/share/logstash/pipeline/logstash.conf

EXPOSE 9600 9601
