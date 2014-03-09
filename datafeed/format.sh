##change name of zip files to the format that chase wants

#!/bin/sh
cd /home/chase/recordings 
mv *.zip Recorded_Calls_LC_`date +"%Y%m%d"`.zip  
<<EOF
EOF