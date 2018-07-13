#!/bin/bash

if [ -z "$1" ]
then
  echo "Domain Invalid"
else
  find_domain="$(ls -lah  /var/cpanel/email_send_limits/ | grep $1)"
  if [ -z "$find_domain" ]
  then
    echo -e "\e[31m$1\e[0m is not on max_defers list."
  else
    echo -e "\e[31m$1\e[0m has been removed."
    rm -rf /var/cpanel/email_send_limits/max_deferfail_$1
  fi
fi
