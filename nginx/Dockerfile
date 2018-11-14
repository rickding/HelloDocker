FROM nginx:stable

# web files
COPY ./web/ /usr/share/nginx/html

# config
COPY ./nginx.conf /etc/nginx
COPY ./conf.d /etc/nginx/conf.d


EXPOSE 80
