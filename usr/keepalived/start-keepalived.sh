#!/bin/bash
envsubst < /usr/keepalived/keepalived.conf.templ > /etc/keepalived/keepalived.conf
/etc/init.d/keepalived restart