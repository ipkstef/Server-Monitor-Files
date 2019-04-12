#define variable for running container 
pmessage=$(check_docker_container.sh pokecraft)


curl 'https://api.twilio.com/2010-04-01/Accounts/AC108acf465f89df469fd0de6d7d669e64/Messages.json' -X POST \
--data-urlencode 'To=+17038324707' \
--data-urlencode 'From=+17034579188' \
<<<<<<< HEAD
--data-urlencode "Body='$pmessage'" \
-u $TWILLO_API
=======
--data-urlencode "Body='$now'" \
-u <put auth token here>
>>>>>>> c4bd4bdc8ce5be9649792f7808f18505fff0d5e6
