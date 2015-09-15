#!/bin/bash
docker run -d --name my-jenkins -v /var/jenkins_home -p 80:8080 -p 50000:50000 jenkins
