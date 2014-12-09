# Tomcat6

# Pull base image.
FROM docker.cucloud.net/java

# File Author / Maintainer
MAINTAINER Shawn Bower

RUN \
  apt-get update && \
  apt-get install -y tomcat6 && \
  rm -rf /var/lib/apt/lists/*
  
EXPOSE 8080
