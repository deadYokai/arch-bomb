@echo off
set /p url="Enter Url: "
set /p dur="Enter Duration (ex. 10s, 10m, 1h, default: 30s): "
set /p con="Enter Connections (default: 1000): "
IF NOT DEFINED dur SET "dur=30s"
IF NOT DEFINED con SET "con=1000"
bash -c "proxychains -q bombardier -c %con% -d %dur% -l -p i,p,r %url%"
pause
