#!/bin/bash

texfajlovi=`find .. -iname "*.tex"`

EKSPR="s/\\\v{s}/š/g
s/\\\v{S}/Š/g
s/\\\'{c}/ć/g
s/\\\'{C}/Ć/g
s/\\\v{C}/Č/g
s/\\\v{c}/č/g
s/\\\dj{}/đ/g
s/\\\Dj{}/Đ/g
s/\\\v{z}/ž/g
s/\\\v{Z}/Ž/g"

for ekspr in $EKSPR; do
#	echo $ekspr;
	sed -i -e "${ekspr}" ${texfajlovi};
done
