#!/bin/bash
echo $(dirname $0)
python3 -m pip install requests
cd $(dirname $0)/scripts/
python3 Euronewsfr.py > ../Euronewsfr.m3u8

echo M3U grabbed.
