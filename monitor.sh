#define variable for running container 
pmessage=$(check_docker_container.sh pokecraft)


curl 'https://api.twilio.com/2010-04-01/Accounts/AC108acf465f89df469fd0de6d7d669e64/Messages.json' -X POST \
--data-urlencode 'To=+17038324707' \
--data-urlencode 'From=+17034579188' \
--data-urlencode "Body='$pmessage'" \
-u $TWILLO_API
