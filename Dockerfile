FROM node:9.1.0

MAINTAINER Michael Hueter <mthueter@gmail.com>

# copy local files into container, set working directory and user
RUN mkdir -p /home/nodejs/app
WORKDIR /home/nodejs/app
COPY . /home/nodejs/app

RUN npm install --global nodemon

RUN /usr/local/bin/yarn install

EXPOSE 5000

# ENTRYPOINT [ "yarn" ]
# CMD ["start"]
# https://github.com/b00giZm/docker-compose-nodejs-examples/blob/master/04-express-grunt-watch/app/Gruntfile.js
CMD ["nodemon", "-L", "/usr/src/bin/www"]
