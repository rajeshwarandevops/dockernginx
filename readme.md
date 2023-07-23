# How to Create Custom Nginx Docker Image
# mkdir <directory name>   mkdir docker-rajeshnginx cd docker-rajeshnginx
# Create custom index.html
# Create Docker file with base image ngnix
# Build  custom docker image from Docker file
# Test the image by running local system for validation
# Push the image to docker hub post validation
# Pull the docker image from docker hub ( which we pushed)
# test the container image which we created
# Reason for exposing port 8081 for this nginx container & running jenkins docker container in my local environment 
# for CICD with port 8080 


# Objectives:
# Create your own image using Nginx. Include a customized index.html file that can be viewed from a local browser.
# Deploy your container with port 8081
# Push custom image your Docker Hub account.
# Pull custom image anywhere and run custom nginx container

# Commands:

# 1.Create Directory
# 2.Change Directory
# 3.Create custom index.html file
# 4.Create Docker file with Instructions
# 5.Build Docker image locally (docker build -t <new_image_name> <url or path of context>) docker build -t rajeshnginx .
# 6.List docker images (docker images)
# 7.Run docker image locally (docker run -d --name <name-container> -p 8081:80 <image_name>) docker run -d -p 8081:80 
# -- name rajeshnginx rajeshnginx 
# 8.Validate docker container # docker ps 
# 9.Login to Docker 
# 10.Tag docker image with docker format (docker tag <image name>:<tag> <dockerhub username>/<image name>:<tag>)
# docker tag rajeshnginx kbrajehwaran/nginx:v.0.0
# 11.Push docker image to docker hub (docker push <image name:tag>) docker push kbrajeshwaran/nginx:v.0.0
# 12.Validate the same in docker hub
# 13.Docker pull to test the image docker pull kbrajeshwaran/nginx:v.0.0