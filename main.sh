#!/bin/bash

echo "🚀 Starting FFmpeg job..."

# Download an example image and audio (you can change these URLs)
curl -o input.jpg https://source.unsplash.com/random/640x360?tribe
curl -o input.mp3 https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3

# Generate a 10-second video from the image and audio
ffmpeg -loop 1 -i input.jpg -i input.mp3 -shortest -vf scale=640:360 -t 10 -c:v libx264 -c:a aac -pix_fmt yuv420p output.mp4

echo "✅ FFmpeg job completed."
ls -lh output.mp4
