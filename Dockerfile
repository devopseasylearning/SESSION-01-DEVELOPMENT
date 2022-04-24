FROM tomcat:8.0-alpine
COPY /home/ansible/webapp.war  /usr/local/tomcat/webapps
ENV var=key
ENV devops=yes
ENV student=EKT-Software-Solution
ENV Good=1
