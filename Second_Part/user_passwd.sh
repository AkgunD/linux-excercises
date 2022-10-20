#!/bin/bash

if [[ ${UID} -ne 0 ]]
then
   echo 'Please run this script with sudo or as root.'
   exit 1
fi

read -p 'Enter the username to create: ' USER_NAME

read -p 'Enter the comment: ' COMMENT

read -sp 'Enter the password to use for the account: ' PASSWORD

useradd -c ${COMMENT} -m ${USER_NAME}

if [[ $? -eq 0 ]]
then
  echo -e '\nuser '$USER_NAME' created succesfully.'
else 
  echo 'Try again.'
fi

echo ${PASSWORD} | passwd --stdin ${USER_NAME}

if [[ $? -eq 0 ]]
then
  echo -e '\nPassword created succesfully.'
else 
  echo 'Try again.'
fi
