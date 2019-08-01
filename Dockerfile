FROM centos:7.6.1810
MAINTAINER "chris@jiedaibao.com"
RUN mkdir -p /data/tomcat
RUN mkdir -p /data/release
ADD target/MavenSpringMVCdemo.war /data/release
WORKDIR /data
ADD jdk.tar.gz /data/
ADD tomcat.tar.gz /data/
ENV JAVA_HOME=/data/jdk
ENV JRE_HOME=$JAVA_HOME/jre
ENV CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib:$CLASSPATH
ENV PATH=$PATH:$JAVA_HOME/bin
EXPOSE 8080
ENTRYPOINT ["/data/tomcat/bin/catalina.sh","run"]
