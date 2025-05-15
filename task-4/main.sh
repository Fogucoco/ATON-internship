#!/bin/bash

docker build -t nginx-https ./files/nginx-https/
docker save nginx-https -o ./files/for-remote-host/nginx-https.tar
ansible-playbook start-container.yml
