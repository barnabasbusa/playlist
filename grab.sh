#!/bin/bash

# Set the paths
REPO_DIR=/home/bbusa/playlist
VIDEO_LIST_FILE=/home/bbusa/playlist/playlist.txt

# Change to the repository directory
cd "$REPO_DIR" || exit

# Check if there are changes (including untracked files)
if [ "$(git status -uno --porcelain)" ]; then
    echo "Changes detected. Pulling changes from the remote repository."

    # Perform a git pull
    git pull

    # Read the video list file and run youtube-dl on each video
    while IFS= read -r video_file; do
        echo "Downloading video: $video_file"
        youtube-dl "$video_file"
    done < "$VIDEO_LIST_FILE"

    echo "Download complete."
else
    echo "No changes detected. No action taken."
fi

