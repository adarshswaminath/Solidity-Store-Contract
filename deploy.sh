#!/bin/bash
# $1 = @RPC-URL
# $2 = @Private-key
# This bash file will automatically deploy contract 
forge create --rpc-url $1 --private-key $2 ./src/Store.sol:Store
