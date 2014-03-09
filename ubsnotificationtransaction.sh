#!/bin/bash

#cron job run 2am

[[ -z `find /home/rmbcards/*.csv -mmin -300` ]]

if [ $? -eq 0 ]
then
"This a test" | mail -s "The UBS transaction file HAS NOT BEEN RECEIVED from UBS. <eom>" dowsong@lesconcierges.com theiosj@lesconcierges.com OL-WMA-Banking-RTB@ubs.com -- -f TeamUBS@lesconcierges.com
else
"This a test" | mail -s "The UBS transaction file HAS BEEN RECIEVED from UBS. <eom>" dowsong@lesconcierges.com theiosj@lesconcierges.com OL-WMA-Banking-RTB@ubs.com spencerk@lesconcierges.com -- -f TeamUBS@lesconcierges.com
fi

<<EOF

EOF