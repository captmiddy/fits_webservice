FROM dordoka/tomcat
MAINTAINER "Anthony Moulen <amoulen@g.harvard.edu>"
ADD catalina.properties
ADD http://projects.iq.harvard.edu/files/fits/files/fits-0.10.2.zip /home
ADD http://projects.iq.harvard.edu/files/fits/files/fits-1.1.1.war /opt/tomcat/webapps
RUN mkdir /processing
RUN mv /opt/tomcat/webapps/fits-1.1.1.war /opt/tomcat/webapps/fits.war
RUN unzip /home/fits-0.10.2.zip ; mv /home/fits-* /home/fits
VOLUME ["/processing"]
