#!/bin/bash

#JENKINS INSTALL
docker pull jenkins/jenkins
docker run -d -p 8080:8080 --name=jenkins-master jenkins/jenkins
docker logs jenkins-master
#get the administrator password for jenkins access modification
