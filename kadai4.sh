#!/bin/sh

echo "It's a Prime number!" > $$-prime
echo "There is a number that can divide.
So It's not a Prime number" > $$-divideble

#Test Prime number.
./kadai3.sh 7 > $$-ans
diff $$-ans $$-prime || exit 1

#Test not Prime number
./kadai3.sh 8 > $$-ans
diff $$-ans $$-divideble || exit 1

#Test huge Prime number
./kadai3.sh 883639 > $$-ans
diff $$-ans $$-prime || exit 1

#Test huge not Prime number
./kadai3.sh 883638 > $$-ans
diff $$-ans $$-divideble || exit 1

rm -f $$-*
