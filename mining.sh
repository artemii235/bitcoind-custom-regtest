#!/bin/bash
# wait a while for the bitcoin node to bootstrap
sleep 10

# `generate` is deprecated in 0.18.0, we need to generate an address and
# use generatetoaddress
bitcoin-cli -regtest createwallet yonatest
bitcoin-cli -regtest -generate 101
while true
do
    bitcoin-cli -regtest -generate 1
    sleep 10
done
