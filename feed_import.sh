#!/bin/sh
scp root@10.0.104.55:/var/data/hiltonWSIntegration/FeedFiles/hilton*.csv /home/hilton/.
chown hilton:hilton /home/hilton/hilton*.csv
