#!/bin/bash
#usage: ./port_scan <output file>

function scan()
{
	host=$1
	printf '%s' "$host"
	for ((port=1;port<1024;port++))
	do
		echo > /dev/null 2>&1 < /dev/tcp/${host}/${port}
		if (($? == 0)) ; then printf '%d' "${port}" ; fi
	done
	echo # or ouput '\n'

}

printf -v TODAY 'scan_%(%F)T' -1  # scan date for example scan_2022-03-03
OUTFILE= ${1:-$TODAY}

while read HOSTNAME
do
	scan $HOSTNAME
done > $OUTFILE 
