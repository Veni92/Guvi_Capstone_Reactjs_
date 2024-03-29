#!/bin/bash
sudo docker stop $(docker ps -a -q)
sudo docker rm $(docker ps -a -q)
sudo docker image rmi -f veni9297/prod:react-app
sudo docker image rmi -f veni9297/dev:react-app
sudo docker rmi -f react-app:latest
sudo  docker rmi -f node:latest
sudo docker build -t react-app:latest .
