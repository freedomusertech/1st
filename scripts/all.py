#! /usr/bin/python3
import requests
import os

def grab(url):
    response = requests.get(url, timeout = 15).text
    if '.m3u8' not in response:
        print("https://raw.githubusercontent.com/freedomusertech/1st/main/assets/info.m3u8")
        return
    end = response.find('.m3u8') + 5
    tuner = 100
    while True:
        if 'https://' in response[end - tuner : end]:
            link = response[end - tuner : end]
            start = link.find('https://')
            end = link.find('.m3u8') + 5
            break
        else:
            tuner += 5
    print(f"{link[start : end]}")
print('#EXTM3U')
print('#EXT-X-VERSION:3')
print('#EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=2560000')
s = requests.Session()
with open('../all.txt', encoding='utf-8') as f:
    for line in f:
        line = line.strip()
        if not line or line.startswith('~~'):
            continue
        if not line.startswith('https:'):
            line = line.split('-')
            ch_name = line[0].strip()
            grp_title = line[1].strip().title()
            print(f'\n#EXTINF:-1 group-title="{grp_title}", {ch_name}')
        else:
            grab(line)
            
if 'temp.txt' in os.listdir():
    os.system('rm temp.txt')
    os.system('rm watch*')
