#!bin/bash
cd $(dirname $0) # makes sure the folder containing the script will be the root folder

# create hash password
USERNAME="username"
PASSWORD="password"
echo $(htpasswd -nb $USERNAME $PASSWORD) | sed -e s/\\$/\\$\\$/g