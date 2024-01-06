@echo off
setlocal enabledelayedexpansion
echo "   _____  ____  _    _ _____ _____         _____  _      
echo "  / ____|/ __ \| |  | |_   _|  __ \       |  __ \| |     
echo " | (___ | |  | | |  | | | | | |  | |______| |  | | |     
echo "  \___ \| |  | | |  | | | | | |  | |______| |  | | |     
echo "  ____) | |__| | |__| |_| |_| |__| |      | |__| | |____ 
echo " |_____/ \___\_\\____/|_____|_____/       |_____/|______|
echo "

REM Get user input for video link
set /p "video_link=Paste YouTube Link:"

REM Get user input for format
set /p "format=Enter format (e.g. mp4, mkv, mp3)"

REM Download run download command
yt-dlp.exe -f "%format%" "%video_link%"