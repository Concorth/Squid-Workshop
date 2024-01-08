@echo off
setlocal enabledelayedexpansion
color d
echo "   _____  ____  _    _ _____ _____
echo "  / ____|/ __ \| |  | |_   _|  __ \
echo " | (___ | |  | | |  | | | | | |  | |
echo "  \___ \| |  | | |  | | | | | |  | |   
echo "  ____) | |__| | |__| |_| |_| |__| |
echo " |_____/ \___\_\\____/|_____|_____/ 
echo "          _    _ _____ _____ ____         _____  _      
echo "     /\  | |  | |  __ \_   _/ __ \       |  __ \| |     
echo "    /  \ | |  | | |  | || || |  | |______| |  | | |     
echo "   / /\ \| |  | | |  | || || |  | |______| |  | | |     
echo "  / ____ \ |__| | |__| || || |__| |      | |__| | |____ 
echo " /_/    \_\____/|_____/_____\____/       |_____/|______|                                                      
echo "

:loop
color d
REM Get user input for video link
set /p "video_link=Paste YouTube link: "

REM Download run download command
yt-dlp.exe -x --audio-format wav "%video_link%"
echo Proccess complete
goto loop
pause