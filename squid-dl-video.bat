@echo off
setlocal enabledelayedexpansion
color d
echo "   _____  ____  _    _ _____ _____         _____  _      
echo "  / ____|/ __ \| |  | |_   _|  __ \       |  __ \| |     
echo " | (___ | |  | | |  | | | | | |  | |______| |  | | |     
echo "  \___ \| |  | | |  | | | | | |  | |______| |  | | |     
echo "  ____) | |__| | |__| |_| |_| |__| |      | |__| | |____ 
echo " |_____/ \___\_\\____/|_____|_____/       |_____/|______|
echo "

REM Get user input for video link
set /p "video_link=Paste YouTube link: "

REM Get user input for format
set /p "format=Enter desired video format (e.g. mp4, mkv): "

REM Download run download command
yt-dlp.exe --remux "%format%" "%video_link%"
echo Proccess complete
pause