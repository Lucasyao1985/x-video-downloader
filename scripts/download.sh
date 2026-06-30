#!/bin/bash
# X/Twitter Video Downloader Script
# Usage: bash download.sh <video_url> <save_path>

VIDEO_URL="$1"
SAVE_PATH="$2"

if [ -z "$VIDEO_URL" ] || [ -z "$SAVE_PATH" ]; then
    echo "Usage: bash download.sh <video_url> <save_path>"
    exit 1
fi

# Create directory if it doesn't exist
mkdir -p "$(dirname "$SAVE_PATH")"

# Download with curl
curl -L -o "$SAVE_PATH" "$VIDEO_URL" 2>&1

# Check if download was successful
if [ -f "$SAVE_PATH" ]; then
    FILE_SIZE=$(stat -f%z "$SAVE_PATH" 2>/dev/null || stat --format=%s "$SAVE_PATH" 2>/dev/null)
    echo "Download complete: $SAVE_PATH ($FILE_SIZE bytes)"
else
    echo "Download failed"
    exit 1
fi
