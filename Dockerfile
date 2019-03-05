FROM node:8.15.0-slim
MAINTAINER Christian Douniama "cdouniama@gmx.de"

COPY run.sh /run.sh
RUN chmod +x /run.sh

# add all files an directories needed for the microservice
COPY src /microservice/

RUN apt-get update
RUN npm install -g /microservice 

EXPOSE 9977

CMD ["/run.sh"]
