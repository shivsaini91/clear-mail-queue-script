#!/bin/bash
for server in `cat /home/data/script/clear_mail/linode/host`
do
	echo $server

	sshpass -p "Hunter454" ssh root@$server "mailq | grep -c '^[A-F0-9]'"
	sshpass -p "Hunter454" ssh root@$server "postqueue -f && postsuper -d ALL"
	sshpass -p "Hunter454" ssh root@$server "mailq | grep -c '^[A-F0-9]'"
done



