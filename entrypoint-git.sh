#!/bin/bash

# Delete git group created by git package
userdel git
 
echo "Starting sshd-ldap image entrypoint script"
./entrypoint.sh &

sleep 5 #TODO: Detect ldap connection is active and then continue
echo "Changing data"  
chgrp git /data

wait