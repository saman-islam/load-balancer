#/bin/bash -x
rate=$(curl -s "http://10.0.60.249:1936/stats;csv" |grep main | 
cut -d "," -f 34)
If [$rate -lt 0] then
 servers=$(($rate / $capacity))
else
 servers=1
fi
docker service update --replicas=$servers website
