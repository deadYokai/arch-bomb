@echo off
wsl --set-version Arch 2
bash -c "pacman-key --init && pacman-key --populate archlinux && pacman -Syu --noconfirm && pacman -S --noconfirm tor proxychains wget && wget -O /usr/bin/bombardier https://github.com/codesenberg/bombardier/releases/download/v1.2.5/bombardier-linux-amd64 && chmod +x /usr/bin/bombardier"
pause
