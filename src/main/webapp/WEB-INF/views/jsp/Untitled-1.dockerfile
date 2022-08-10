FROM centos:latest
RUN yum install java -yum
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.81/bin/apache-tomcat-8.5.81.tar.gz .  //already in the tomcat directoty 
RUN tar -xvzf apache-tomcat-8.5.81.tar.gz
RUN  apache-tomcat-8.5.81.tar.gz/* /opt/tomcat
EXPOSE 8080 
CMD ["/opt/tomcat/bin/catalina.sh," "run"]   
