FROM harbor.jiedaibao.com/library/tomcat_base:v1.0
MAINTAINER "chris@jiedaibao.com"
RUN mkdir -p /data/tomcat
RUN mkdir -p /data/release
ADD target/MavenSpringMVCdemo.war /data/release
WORKDIR /data
EXPOSE 8080
ENTRYPOINT ["/data/tomcat/bin/catalina.sh","run"]
