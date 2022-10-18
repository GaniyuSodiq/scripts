#!/bin/bash
echo 
echo "'#################3###########3#"
date
ls /var/run/httpd/httpd.pid &>> /dev/null

if [ $? -eq 0 ]
then 
	echo "Httpd process is running"
else
	echo "Httpd process is NOT running"
	echo "Starting the process"
	systemctl start httpd
	if [ $? -eq 0 ]
	then
		echo "Process started successfully."
	else
		echo "The process failed, contact the admin."
	fi
fi

echo "'#################3###########3#"
echo
