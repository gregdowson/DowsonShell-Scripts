##Encrypt files to gpg.

#!/bin/sh
local_zipfile=/home/chase/recordings/*.zip
gpg --trust-model always -e -r svcaxway $local_zipfile
<<EOF

 







 