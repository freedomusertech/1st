#!/bin/bash
chmod 777 *.*
for f in *.*
do
mkvpropedit "$f" --chapters '' > /dev/null 2>&1
mkvpropedit "$f" -v -e info --set title="" > /dev/null 2>&1
mkvpropedit "$f" -v -e info --delete-attachment 1 > /dev/null 2>&1
mkvpropedit "$f" -v -e info --delete-attachment 2 > /dev/null 2>&1
mkvpropedit "$f" -v -e info --delete-attachment 3 > /dev/null 2>&1
mkvpropedit "$f" -v -e info --delete-attachment 4 > /dev/null 2>&1
mkvpropedit "$f" -v -e info --delete-attachment 5 > /dev/null 2>&1

mkvpropedit "$f" -v -e info --edit track:v1 -d name > /dev/null 2>&1

mkvpropedit "$f" -v -e info --edit track:a1 -d name > /dev/null 2>&1
mkvpropedit "$f" -v -e info --edit track:a2 -d name > /dev/null 2>&1
mkvpropedit "$f" -v -e info --edit track:a3 -d name > /dev/null 2>&1
mkvpropedit "$f" -v -e info --edit track:a4 -d name > /dev/null 2>&1
mkvpropedit "$f" -v -e info --edit track:a5 -d name > /dev/null 2>&1
mkvpropedit "$f" -v -e info --edit track:a6 -d name > /dev/null 2>&1
mkvpropedit "$f" -v -e info --edit track:a7 -d name > /dev/null 2>&1
mkvpropedit "$f" -v -e info --edit track:a8 -d name > /dev/null 2>&1
mkvpropedit "$f" -v -e info --edit track:a9 -d name > /dev/null 2>&1
mkvpropedit "$f" -v -e info --edit track:a10 -d name > /dev/null 2>&1

mkvpropedit "$f" -v -e info --edit track:s1 -d name > /dev/null 2>&1
mkvpropedit "$f" -v -e info --edit track:s2 -d name > /dev/null 2>&1
mkvpropedit "$f" -v -e info --edit track:s3 -d name > /dev/null 2>&1
mkvpropedit "$f" -v -e info --edit track:s4 -d name > /dev/null 2>&1
mkvpropedit "$f" -v -e info --edit track:s5 -d name > /dev/null 2>&1
mkvpropedit "$f" -v -e info --edit track:s6 -d name > /dev/null 2>&1
mkvpropedit "$f" -v -e info --edit track:s7 -d name > /dev/null 2>&1
mkvpropedit "$f" -v -e info --edit track:s8 -d name > /dev/null 2>&1
mkvpropedit "$f" -v -e info --edit track:s9 -d name > /dev/null 2>&1
mkvpropedit "$f" -v -e info --edit track:s10 -d name > /dev/null 2>&1

mkvpropedit "$f" -v -e info --tags all: > /dev/null 2>&1

mkvpropedit "$f" -v -e info --chapters "" > /dev/null 2>&1
done