#!/bin/bash

echo "
Disk space prior to cleaning....
"
df -h
du -sh /var/log/


echo "Deleting Old/Archive Message Logs...
`ls /var/log/messages-* 2>/dev/null`
"
rm -f /var/log/messages-* 2>/dev/null

echo "Deleting Old/Archive Cron Logs....
`ls /var/log/cron-* 2>/dev/null`
"
rm -f /var/log/cron-* 2>/dev/null

echo "Deleting Old/Archive Secure Logs...
`ls /var/log/secure-* 2>/dev/null`
"
rm -f /var/log/secure-* 2>/dev/null

echo "Deleting Old/Archive Spooler Logs...
`ls /var/log/spooler-* 2>/dev/null`
"
rm -f /var/log/spooler-* 2>/dev/null

echo "Deleting Old/Archive Maillog Logs...
`ls /var/log/maillog-* 2>/dev/null`
"
rm -f /var/log/maillog-* 2>/dev/null

echo "Deleting Old/Archive Lastlog...
`ls /var/log/lastlog-* 2>/dev/null`
"
rm -f /var/log/lastlog-* 2>/dev/null

echo "Deleting Old/Archive Exim_paniclog Logs...
`ls /var/log/exim_paniclog-* 2>/dev/null`
"
rm -f /var/log/exim_paniclog-* 2>/dev/null

echo "Deleting Old/Archive Exim_rejectlog Logs...
`ls /var/log/exim_rejectlog-* 2>/dev/null`
"
rm -f /var/log/exim_rejectlog-* 2>/dev/null

echo "Deleting Old/Archive Exim_mainlog Logs...
`ls /var/log/exim_mainlog-* 2>/dev/null`
"
rm -f /var/log/exim_mainlog-* 2>/dev/null

echo "Removing cPanel Trash Folders at /home/user/.trash/...
"
rm -rf /home*/*/.trash

echo "
Performing Yum Clean ...
"
yum clean all

exit 0