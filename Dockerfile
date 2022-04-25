FROM tomcat:8.0-jre7
COPY /home/ansible/webapp.war  /usr/local/tomcat/webapps
RUN  apt update -y
VOLUME /volusagdqsgdqsgdqsme
VOLUME /volume
VOLUME /steve
ENV key=pair
ENV set=apt
ENV SDG=FR
expose 90 95 1000

