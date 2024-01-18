#!/bin/bash
sleep 25
export DISPLAY=:0

cvlc --fullscreen --no-video-title-show --repeat /home/bbusa/Videos/*.mp4
