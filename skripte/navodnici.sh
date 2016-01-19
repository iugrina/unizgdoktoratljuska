#!/bin/bash

texfajlovi=`find .. -iname "*.tex"`

EKSPR="s/\`\`/{\\\glqq}/g"

for ekspr in $EKSPR; do
#	echo $ekspr;
	sed -i -e "${ekspr}" ${texfajlovi};
done
