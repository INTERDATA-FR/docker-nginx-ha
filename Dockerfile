FROM ubuntu:16.04

MAINTAINER Thibault CHEVALLERAUD <tchevalleraud@interdata.fr>

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install gettext-base && \
    apt-get -y install nginx keepalived && \
    apt-get clean

WORKDIR /

ADD usr/bin/nginx-ha.entrypoint.sh /usr/bin/nginx-ha.entrypoint.sh
ADD usr/keepalived /usr/keepalived/

RUN chmod 755 /usr/bin/nginx-ha.entrypoint.sh
RUN chmod 755 /usr/keepalived/*.sh

ENTRYPOINT [ "/usr/bin/nginx-ha.entrypoint.sh" ]