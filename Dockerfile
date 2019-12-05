# Tomcat6

# Pull base image.
FROM 078742956215.dkr.ecr.us-east-1.amazonaws.com/kuali/java7-base 

# File Author / Maintainer
MAINTAINER kuali-devops kuali-devops@cornell.edu


RUN \
  apt-get update && \
  apt-get install -y tomcat6 && \
  rm -rf /var/lib/apt/lists/* 

EXPOSE 8080
