# Tomcat6

# Pull base image.
FROM docker.cucloud.net/java

# File Author / Maintainer
MAINTAINER Shawn Bower

ADD appdynamics.tar /usr/share

RUN \
  apt-get update && \
  apt-get install -y tomcat6 && \
  rm -rf /var/lib/apt/lists/* && \
  chown -R tomcat6:tomcat6 /usr/share/appdynamics

EXPOSE 8080
