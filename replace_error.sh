#!/bin/bash
grep -R  "error" /tmp/*.log| awk -F: '{ print $1 }'| sort| uniq| while read line;
do
	sed -i 's/error/Warning/g' $line
done
