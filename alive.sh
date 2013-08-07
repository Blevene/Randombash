#!/bin/bash
#This scripts reads from a FILE into whatweb.
#The results are then organized to display URL and HTTP Status
while read line; do
  whatweb $line --log-brief=Output -q
	echo Testing $line
	cat Output | cut -d ' ' -f 1,2 | grep http.* >> Status
done < FILE
