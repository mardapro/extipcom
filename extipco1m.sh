#!/bin/bash

curl icanhazip.com -o ipext1.txt

sleep 5m

curl icanhazip.com -o ipext2.txt

diff ipext1.txt ipext2.txt | tee ipextchg.txt

if [ -s /home/pi/ipextchg.txt ]
then
	cat ipextchg.txt | sudo ssmtp your@email.com
else
	echo "nothing to do"
fi

