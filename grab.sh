#!/bin/bash

# Set the paths
REPO_DIR=/home/bbusa/playlist
VIDEO_LIST_FILE=/home/bbusa/playlist/playlist.txt

# Change to the repository directory
cd "$REPO_DIR" || exit

# Perform a git pull
git pull

# Check if there are changes
if [ "$(git status --porcelain)" ]; then
    echo "Changes detected. Running youtube-dl on videos."

    # Read the video list file and run youtube-dl on each video
    while IFS= read -r video_file; do
        echo "Downloading video: $video_file"
        youtube-dl "$video_file"
    done < "$VIDEO_LIST_FILE"

    echo "Download complete."
else
    echo "No changes detected. No action taken."
fi

