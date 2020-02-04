FROM nginx:latest

# web files
COPY ./web/ /usr/share/nginx/html

# config
COPY ./conf/ /etc/nginx/

WORKDIR /etc/nginx

EXPOSE 80
