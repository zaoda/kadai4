#!/bin/bash
if [ -e tmp ]; then
	rm tmp
fi
if [ -e hoge ]; then
	rm hoge
fi

echo $1 | `awk '{print sqrt($0)}' > tmp`
seqn=`cat tmp`
for i in `seq 2 1 $seqn`
do amari=$(( $1 % i))
	if [ $amari = 0 ] ; then
		echo "There is a number that can divide." >hoge
	else
		echo "fuga" >>hoge
	fi
done
grep "There is a number that can divide." hoge
if [ "$?" -eq 0 ] ; then
	echo "So It's not a Prime number"
else
	echo "It's a Prime number!"
fi
rm tmp
rm hoge
