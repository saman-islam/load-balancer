#!/bin/bash +x

httperf --server 10.0.28.99 --rate 10 --num-conns 1000 --num-calls 1
httperf --server 10.0.28.99 --rate 5 --num-conns 1000 --num-calls 1
httperf --server 10.0.28.99 --rate 10 --num-conns 1000 --num-calls 1
httperf --server 10.0.28.99 --rate 3 --num-conns 1000 --num-calls 1
httperf --server 10.0.28.99 --rate 10 --num-conns 1000 --num-calls 1
