FROM tomcat:8.0-jre7
COPY ./webapp.war  /usr/local/tomcat/webapps
EXPOSE 8080 9090 8085
ENV Texas=Houston
ENV nigeria=notworkin
ENV Devop=good
RUN pwd
LABEL EK TECH SOFTWARE SOLUTION
