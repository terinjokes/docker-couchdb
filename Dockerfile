# Version: 0.9.0-head
FROM phusion/baseimage:0.9.8
MAINTAINER Terin Stock <terinjokes@gmail.com>

ENV HOME /root

VOLUME ["/opt/couchdb/var/lib/couchdb/"]

CMD ["/sbin/my_init"]

ADD build /build/docker-couchdb

RUN /build/docker-couchdb/prepare.sh
RUN /build/docker-couchdb/install_couchdb.sh

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
