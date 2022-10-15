#!/bin/bash
# A simple script to check if you are presently viewing anonymously and runs Nipe if you are not

function ANON()
{
CNTRY=$(curl -s ifconfig.io/country_code)
#-s / silent mode

if [ "$CNTRY" == "SG" ]
then

	echo "You are NOT anonymous!"
	sudo perl nipe.pl start
	echo "Running Nipe.."
	ANON
else 
	echo "You are anonymous.."

fi
}
ANON

#All credits goes to the respective owner / creator of the tools used in this script
#Sources:
#https://github.com/htrgouvea/nipe
#https://github.com/curl/curl