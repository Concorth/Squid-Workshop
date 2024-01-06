@echo off
setlocal enabledelayedexpansion
color d
echo "   _____  ____  _    _ _____ _____         _____  _      
echo "  / ____|/ __ \| |  | |_   _|  __ \       |  __ \| |     
echo " | (___ | |  | | |  | | | | | |  | |______| |  | | |     
echo "  \___ \| |  | | |  | | | | | |  | |______| |  | | |     
echo "  ____) | |__| | |__| |_| |_| |__| |      | |__| | |____ 
echo " |_____/ \___\_\\____/|_____|_____/       |_____/|______|
echo "          _    _ _____ _____ ____  
echo "     /\  | |  | |  __ \_   _/ __ \ 
echo "    /  \ | |  | | |  | || || |  | |
echo "   / /\ \| |  | | |  | || || |  | |
echo "  / ____ \ |__| | |__| || || |__| |
echo " /_/    \_\____/|_____/_____\____/ 
echo "

:loop
color d
REM Get user input for video link
set /p "video_link=[AUDIO ONLY DOWNLOAD] Paste YouTube link: "

REM Download run download command
yt-dlp.exe -x --audio-format wav "%video_link%"
echo Proccess complete
goto loop
pause