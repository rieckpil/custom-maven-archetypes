@echo off
call mvn clean package
call docker build -t ${groupId}/${artifactId} .
call docker rm -f ${artifactId}
call docker run -d -p 8080:8080 -p 4848:4848 --name ${artifactId} ${groupId}/${artifactId}