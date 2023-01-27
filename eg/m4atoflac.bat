@echo off

set Ext=*.m4a

md output

echo start_converting

for %%a in (%Ext%) do (
     echo converting: %%a
     ffmpeg -i "%%a" -c copy -f flac "output\%%~na.flac"
)

echo convertion_complete

pause

