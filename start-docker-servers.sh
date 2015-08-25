#!/bin/bash
#docker run -d -P --name my-mongo mongo
#docker run -d -P --name my-rabbit -e RABBITMQ_NODENAME=my-rabbit rabbitmq:3-management
docker start my-tomcat
docker start my-mongo
docker start my-rabbit
docker ps
