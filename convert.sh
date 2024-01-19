#!/bin/bash
for file in *.webm; do ffmpeg -i "$file" -vf "transpose=1" -an -c:v libx264 -crf 23 -preset veryfast "${file%.webm}.mp4"; done

rm *.webm