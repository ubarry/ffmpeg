@echo off

set Ext=*.m4a

md output

echo start_converting

for %%a in (%Ext%) do (
     echo converting: %%a
     ffmpeg -i "%%a" -aq 0 "output\%%~na.mp3"
)

echo convertion_complete

pause

