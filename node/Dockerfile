FROM node:8

LABEL maintainer="Jext Community, https://github.com/rickding/HelloDocker"

# copy files
COPY . /usr/node/
WORKDIR /usr/node/

# launch service
CMD ["node", "hello.js"]

EXPOSE 8010
