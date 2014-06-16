#!/bin/bash

if [ $1 == "1" ]; then
(
echo "PROXY 1 2 3 4"
sleep 1
echo "GET /spotConditions"
echo ""
sleep 1
)| telnet localhost 8125
fi

if [ $1 == "2" ]; then
(
echo -n "PROX"
sleep 1
echo "Y 1 2 3 4"
sleep 1
echo "GET /spotConditions"
echo ""
sleep 1
)| telnet localhost 8125
fi

if [ $1 == "3" ]; then
(
echo -n "PROXY "
sleep 1
echo -n "01234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789"
echo -n "Y 1 2 3 4"
sleep 1
echo -n "GET /spotConditions"
echo -n ""
sleep 1
)| telnet localhost 8125
fi

if [ $1 == "4" ]; then
(
echo -n "PROX"
sleep 1
)| telnet localhost 8125
fi
