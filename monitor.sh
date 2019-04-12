#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/usr/bin/curl



#define variable for running container 
PMESSAGE=$(check_docker_container.sh pokecraft)


curl --silent 'https://api.twilio.com/2010-04-01/Accounts/AC108acf465f89df469fd0de6d7d669e64/Messages.json' -X POST \
--data-urlencode 'To=+17038324707' \
--data-urlencode 'From=+17034579188' \
--data-urlencode "Body='$PMESSAGE'" \
-u $TWILLO_API
