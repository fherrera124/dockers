#!/bin/sh

ffmpeg -i https://cdns-am79056-1.planisys.net/hls/chunklist.m3u8 \
  -codec:a libmp3lame -legacy_icecast 1 -vn -f mp3 \
  icecast://source:changeme@192.168.100.185:8000/mitre_am790.mp3
