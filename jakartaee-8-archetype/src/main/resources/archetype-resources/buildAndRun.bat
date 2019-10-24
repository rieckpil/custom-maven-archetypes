@echo off
call mvn clean package
call docker build -t ${groupId}/${artifactId} .
call docker rm -f ${artifactId}
call docker run -d -p 9080:9080 -p 9443:9443 --name ${artifactId} ${groupId}/${artifactId}