#!/bin/bash

drama_link="$1"

sudo apt update -y && sudo apt install ffmpeg wget -y 

wget https://github.com/yt-dlp/yt-dlp/releases/download/2024.11.04/yt-dlp_linux -O yt-dlp && chmod +x yt-dlp

./yt-dlp -f "bestvideo+bestaudio" --write-subs --sub-lang en --convert-subs srt $drama_link

clear && echo "Drama downloaded successfully"
