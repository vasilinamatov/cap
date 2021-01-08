#!/bin/bash
sudo useradd -rs /bin/false prometheus
sudo mkdir /etc/prometheus
cd /etc/prometheus/ && sudo touch prometheus.yml
sudo mkdir -p /data/prometheus
sudo chown prometheus:prometheus /data/prometheus /etc/prometheus/*
sudo netstat -tulpn | grep 9090
cat /etc/passwd | grep prometheus
docker run -d -p 9100:9100 --name node-exporter --net="host" prom/node-exporter
docker run -d -p 9104:9104 --name container-exporter -v /sys/fs/cgroup:/cgroup -v /var/run/docker.sock:/var/run/docker.sock prom/container-exporter
docker run -d -p 9090:9090 --name prometheus -v /etc/prometheus/prometheus.yml:/etc/prometheus/prometheus.yml prom/prometheus --config.file=/etc/prometheus/prometheus.yml