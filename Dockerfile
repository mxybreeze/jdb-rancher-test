FROM centos:7.6.1810

MAINTAINER huangll99@126.com
ADD target/demo-0.0.1-SNAPSHOT.jar /app.jar

EXPOSE 8080
ENTRYPOINT ["java","-Xmx300m","-Dserver.port=8080","-jar","app.jar"]
