#Cron job “SFTPs” the files from 10.0.103.31 to Chase at gwahir.jpmchase.com (169.81.44.131)
#!/bin/sh
local_path=/home/chase/recordings/*.pgp
remote_path=/inbound
sftp -v svcconcierges@169.81.44.131 <<EOF
put $local_path $remote_path
EOF