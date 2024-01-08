@echo off
setlocal enabledelayedexpansion
color d
echo "   _____  ____  _    _ _____ _____
echo "  / ____|/ __ \| |  | |_   _|  __ \   
echo " | (___ | |  | | |  | | | | | |  | |  
echo "  \___ \| |  | | |  | | | | | |  | |    
echo "  ____) | |__| | |__| |_| |_| |__| |
echo " |_____/ \___\_\\____/|_____|_____/  
echo " __      _______ _____  ______ ____         _____  _      
echo " \ \    / /_   _|  __ \|  ____/ __ \       |  __ \| |     
echo "  \ \  / /  | | | |  | | |__ | |  | |______| |  | | |     
echo "   \ \/ /   | | | |  | |  __|| |  | |______| |  | | |     
echo "    \  /   _| |_| |__| | |___| |__| |      | |__| | |____ 
echo "     \/   |_____|_____/|______\____/       |_____/|______|
echo "

echo Powered by yt-dlp and FFmpeg
echo Getting latest yt-dlp version...
dependencies\yt-dlp.exe -U > nul
echo Update complete
:loop
color d
REM Get user input for video link
set /p "video_link=Paste YouTube link: "

REM Get user input for format
set /p "format=Enter desired video format (e.g. mp4, mkv): "

REM Download run download command
dependencies\yt-dlp.exe --remux "%format%" "%video_link%" 
echo Proccess complete
goto loop
pause