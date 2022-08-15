FROM tomcat:8.0.20-jre8
RUN yum install java -y
Run yum install git -y
# Dummy text to test 
COPY target/java-web-app*.war /usr/local/tomcat/webapps/java-web-app.war
