FROM nginx:stable

# web files
COPY ./web/ /usr/share/nginx/html

# config
COPY ./conf/nginx.conf /etc/nginx/nginx.conf
COPY ./conf/conf.d /etc/nginx/conf.d

WORKDIR /etc/nginx

EXPOSE 80
