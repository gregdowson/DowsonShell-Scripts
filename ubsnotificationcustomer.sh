#!/bin/bash

#cron job runs at 7 am

[[ -z `find /home/rmbcards/*.txt -mmin -300` ]]

if [ $? -eq 0 ]
then
"This is a test" | mail -s "The UBS customer file HAS NOT BEEN RECEIVED today. <eom>" dowsong@lesconcierges.com OL-WMA-Banking-RTB@ubs.com theiosj@leconcierges.com spencerk@lesconcierges.com -- -f TeamUBS@lesconcierges.com
else
"This a test" | mail -s "The UBS customer file HAS BEEN RECEIVED today. <eom>" dowsong@lesconcierges.com OL-WMA-Banking-RTB@ubs.com theiosj@lesconcierges.com spencerk@lesconcierges.com -- -f TeamUBS@lesconcierges.com
fi