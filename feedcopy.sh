#!/bin/sh
scp /home/juniperbank/*.txt root@10.0.104.55:/var/data/juniper
scp /home/rci_df/*.csv root@10.0.104.55:/var/data/rci/
scp /home/rci_df/*.xls root@10.0.104.55:/var/data/rci/
scp /home/lockheedmartin/*.txt root@10.0.104.55:/var/data/lockheedmartin
scp /home/genentech/*.xls root@10.0.104.55:/var/data/genentech
scp /home/genentech/*.XLS root@10.0.104.55:/var/data/genentech
scp /home/hilton/*.xlsx root@10.0.104.55:/var/data/hilton/
scp /home/hilton/*.xls root@10.0.104.55:/var/data/hilton/
scp /home/roche-test/*.csv root@10.0.104.55:/var/data/roche/
rm /home/juniperbank/*.txt
rm /home/rci_df/*.csv
rm /home/rci_df/*.xls
rm /home/lockheedmartin/*.txt
rm /home/genentech/*.xls
rm /home/genentech/*.XLS
rm /home/hilton/*.xlsx
rm /home/hilton/*.xls
rm /home/roche-test/*.csv
