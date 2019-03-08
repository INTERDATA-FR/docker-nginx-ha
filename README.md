# Docker - Nginx HA

This deposit allows the establishment of a container of a NGINX service with high availability of the container.

##Configuration
### Nginx
### Keepalived
---

# Usage with Docker Compose
```
version: "2"
services:
  lb1:
    container_name: interdata_lb1
    environment:
      INTERFACE:  "eth0"
      STATE:      "MASTER"
      VR_ID:      "100"
      PRIORITY:   "101"
      VIP:        "192.168.100.100"
      VIP_MASK:   "24"
      PASSWORD:   "VRRP_Password"
    network_mode: host
    image: interdatafr/docker-nginx-ha:1.0
    ports:
      - "80:80"
    privileged: true
    restart: always
    tty: true
```