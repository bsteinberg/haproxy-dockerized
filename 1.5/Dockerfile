############################################################
# Dockerfile to build HAProxy container images
# 
# Based on: CentOS 6
#
# Created On: December 24, 2015
# Author: Baruch Steinberg <baruch.steinberg@gmail.com>
############################################################

# Set the base image
FROM centos:6

# File maintainer
MAINTAINER Baruch Steinberg

# Update OS packages
RUN yum -y update

############################################################
#
# INSTALLATION
# ----------------------------------------------------------
# 1. Install haproxy package using yum
############################################################
RUN yum -y install haproxy

ADD haproxy.sh /haproxy.sh
############################################################
#
# CONFIGURATION
# ----------------------------------------------------------
# 1. Expose port 80
############################################################
ADD haproxy.cfg /etc/haproxy/haproxy.cfg
WORKDIR /etc/haproxy
CMD ["bash","/haproxy.sh"]

EXPOSE 80
EXPOSE 9000
