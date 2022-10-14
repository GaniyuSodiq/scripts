#!/bin/bash

#Variables
PACKAGE="httpd wget unzip"
SVC="httpd"
URL="https://www.tooplate.com/zip-templates/2128_tween_agency.zip"
ART_NAME="2128_tween_agency"
TEMPDIR="/tmp/webfiles"

# Install Dependencies
echo "##############################"
echo "Installing Dependencies"
echo "##############################"
sudo yum install $PACKAGE -y > /dev/null
echo 

# Start and enable web service
echo "##############################"
echo "Starting and Enabling web service"
echo "##############################"
sudo systemctl start $SVC
sudo systemctl enaable $SVC
echo

# Starting Artifact Deployment
echo "##############################"
echo "Starting Artifact Deployment"
echo "##############################"
mkdir -p $TEMPDIR
cd $TEMPDIR
echo

# Download and Deploy Artifact
echo "##############################"
echo "Downloading and Deploying Artifact"
echo "##############################"
wget $URL > /dev/null
unzip $ART_NAME.zip > /dev/null
cp -r $ART_NAME/* /var/www/html/ 
echo

# Bounce The Service
echo "##############################"
echo "Restarting HTTPD Service"
echo "##############################"
sudo systemctl restart $SVC
echo

# Clean Up
echo "##############################"
echo "Removing Temporary Files"
echo "##############################"
rm -rf $TEMPDIR
echo

# Show sstatus of the Service
echo "#####3#############3##########"
echo "This is the status of the web service"
echo "##############################"
sudo systemctl status $SVC
echo

ls /var/www/html/

