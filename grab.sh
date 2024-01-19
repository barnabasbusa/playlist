#!/bin/bash

# Set the paths
REPO_DIR=./
VIDEO_LIST_FILE=./playlist.txt

# Change to the repository directory
cd "$REPO_DIR" || exit

# Fetch changes from the remote repository
git fetch

# Check if there are changes (including untracked files)
if [ "$(git status -uno --porcelain)" ]; then
    echo "Changes detected. Pulling changes from the remote repository."

    # Perform a git pull
    git pull

    # Read the video list file and run youtube-dl on each video
    index=1
    while IFS= read -r video_file; do
        echo "Downloading video: $video_file"
        
        # Use index as the filename with a .mp4 extension
        output_file="$index"
        
        # Increment index for the next video
        ((index++))
        
        yt-dlp -o "$output_file" "$video_file"
    done < "$VIDEO_LIST_FILE"

    echo "Download complete."
else
    echo "No changes detected. No action taken."
fi

