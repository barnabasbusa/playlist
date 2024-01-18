#!/bin/bash
sleep 10
export DISPLAY=:0
cvlc --fullscreen --loop --no-video-title-show /home/bbusa/Videos/*.mkv
