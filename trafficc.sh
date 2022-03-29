#!/bin/bash

step=60

for rate in $( echo $1 | sed -e 's/,/ /g'); do
timestamp=$( date +%s )
#conns = step*rate
conns=$(( $step*$rate ))
httperf --server $2 --rate $rate --num-calls 1 --num-conns $conns --uri /index.html

echo "$timestamp, $rate, $conns"
done
