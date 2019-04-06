now=$(check_docker_container.sh 9c5858ea1772)

curl 'https://api.twilio.com/2010-04-01/Accounts/AC108acf465f89df469fd0de6d7d669e64/Messages.json' -X POST \
--data-urlencode 'To=+17038324707' \
--data-urlencode 'From=+17034579188' \
--data-urlencode "Body='$now'" \
-u AC108acf465f89df469fd0de6d7d669e64:4328a809a7ba94ed686dacb2b63d72c0
