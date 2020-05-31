#!/bin/sh
if [ $(docker ps -a -f name=${artifactId} | grep -w ${artifactId} | wc -l) -eq 1 ]
then
  docker rm -f ${artifactId}
fi
mvn clean package && docker build -t ${groupId}/${artifactId} .
docker run -d -p 9080:9080 -p 9443:9443 --name ${artifactId} ${groupId}/${artifactId}
