#!/bin/bash

# Install Dependencies
echo "##############################"
echo "Installing Dependencies"
echo "##############################"
sudo yum install wget unzip httpd -y > /dev/null
echo 

# Start and enable web service
echo "##############################"
echo "Starting and Enabling web service"
echo "##############################"
sudo systemctl start httpd
sudo systemctl enaable httpd
echo

# Starting Artifact Deployment
echo "##############################"
echo "Starting Artifact Deployment"
echo "##############################"
mkdir -p /tmp/webfiles
cd /tmp/webfiles
echo

# Download and Deploy Artifact
echo "##############################"
echo "Downloading and Deploying Artifact"
echo "##############################"
wget https://www.tooplate.com/zip-templates/2123_simply_amazed.zip > /dev/null
unzip 2123_simply_amazed.zip > /dev/null
cp -r 2123_simply_amazed/* /var/www/html/ 
echo

# Bounce The Service
echo "##############################"
echo "Restarting HTTPD Service"
echo "##############################"
sudo systemctl restart httpd
echo

# Clean Up
echo "##############################"
echo "Removing Temporary Files"
echo "##############################"
rm -rf /tmp/webfiles
echo

# Show sstatus of the Service
echo "#####3#############3##########"
echo "This is the status of the web service"
echo "##############################"
sudo systemctl status httpd
echo

ls /var/www/html/

