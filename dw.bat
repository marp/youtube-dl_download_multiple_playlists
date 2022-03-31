@echo off
title Download
if not exist list.txt echo directory url > list.txt
FOR /F "tokens=1,2 delims= " %%a in (list.txt) DO (mkdir %%a & cd %%a & youtube-dl --write-srt --sub-lang en %%b & cd ..)
pause
