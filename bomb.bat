@echo off
set /p url="Enter Url: "
set /p dur="Enter Duration (ex. 10s, 10m, 1h): "
bash -c "proxychains -q bombardier -c 1000 -d %dur% -l -p i,p,r %url%"
pause