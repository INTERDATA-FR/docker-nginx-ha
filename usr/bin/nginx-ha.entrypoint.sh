#!/bin/bash
set -e
/etc/init.d/nginx start
/usr/keepalived/start-keepalived.sh
/bin/bash