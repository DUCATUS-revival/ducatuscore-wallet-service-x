#!/bin/bash
apt-get update -y
apt-get install -y docker docker-compose software-properties-common gnupg gnupg2
add-apt-repository -y ppa:certbot/certbot
apt-key update -y
apt-get update -y
apt-get install -y --allow-authenticated python-certbot-nginx
