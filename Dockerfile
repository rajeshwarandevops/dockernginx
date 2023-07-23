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



FROM nginx:stable-alpine
MAINTAINER name: Rajeshwaran
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 8081 
 CMD ["nginx", "-g", "daemon off;"]
