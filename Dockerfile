FROM tomcat:8.0-alpine
COPY /home/ansible/webapp.war  /usr/local/tomcat/webapps
RUN mkdir More
VOLUME /volume
VOLUME /steve

