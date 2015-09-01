#!/bin/bash
./stop-docker-servers.sh
docker rm my-tomcat
docker rm my-mongo
docker rm my-rabbit
docker rm my-cassandra
docker rm my-kong
#docker run -it -d --name my-tomcat -v $HOME/tomcat/tomcat-users.xml:/usr/local/tomcat/conf/tomcat-users.xml:ro -p 8080:8080 tomcat
docker run -d --name my-mongo -p 27017:27017 mongo
docker run -d --name my-rabbit -p 5672:5672 -p 15672:15672 -e RABBITMQ_DEFAULT_USER=test -e RABBITMQ_DEFAULT_PASS=password -e RABBITMQ_NODENAME=my-rabbit rabbitmq:3-management

./start-docker-servers.sh
