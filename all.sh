#!/bin/bash

echo $(dirname $0)

python3 -m pip install requests

cd $(dirname $0)/scripts/

python3 all.py > ../all.m3u8

echo m3u grabbed
