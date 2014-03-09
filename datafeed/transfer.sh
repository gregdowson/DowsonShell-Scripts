#!/bin/sh

cd /home/chase/recordings

##change zip file name to the format that Chase wants
mv *.zip Recorded_Calls_LC_`date +"%Y%m%d"`.zip 

##encrypt file using gpg
local_zipfile=/home/chase/recordings/Recorded_Calls_LC_*.zip
gpg --trust-model always -e -r svcaxway $local_zipfile\

##change the gpg file extension to pgp
rename .gpg .pgp *.gpg

##SFTP the file to Chase at the production IP
local_path=/home/chase/recordings/*.pgp
remote_path=/inbound
sftp -v svcconcierges@169.81.44.131 <<EOF

## Put the file in the inbound folder
put $local_path $remote_path
EOF