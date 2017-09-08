FROM ubuntu:16.04

RUN apt-get update -y && apt-get install -y git npm nodejs-legacy

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install -g grunt bower
RUN npm install

# Bundle app source
COPY . /usr/src/app

RUN rm logs/*

#RUN npm stop

EXPOSE 3380
EXPOSE 3232
EXPOSE 3231

CMD [ "/bin/bash" ]

