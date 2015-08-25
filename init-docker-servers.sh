#!/bin/bash
./stop-docker-servers.sh
docker rm my-tomcat
docker rm my-mongo
docker rm my-rabbit
docker run -it -d --name my-tomcat -v $HOME/tomcat/tomcat-users.xml:/usr/local/tomcat/conf/tomcat-users.xml:ro -p 10000:8080 tomcat
docker run -d --name my-mongo -p 10001:27017 mongo
docker run -d --name my-rabbit -p 10002:15672 -e RABBITMQ_NODENAME=my-rabbit rabbitmq:3-management
./start-docker-servers.sh
