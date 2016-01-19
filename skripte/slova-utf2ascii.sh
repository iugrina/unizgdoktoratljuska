#!/bin/bash

texfajlovi=`find .. -iname "*.tex"`

EKSPR="s/š/\\\v{s}/g
s/Š/\\\v{S}/g
s/ć/\\\'{c}/g
s/Ć/\\\'{C}/g
s/Č/\\\v{C}/g
s/č/\\\v{c}/g
s/đ/\\\dj{}/g
s/Đ/\\\Dj{}/g
s/ž/\\\v{z}/g
s/Ž/\\\v{Z}/g"

for ekspr in $EKSPR; do
#	echo $ekspr;
	sed -i -e "${ekspr}" ${texfajlovi};
done
