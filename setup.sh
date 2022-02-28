#!/bin/bash

pacman -Syu
pacman -S --noconfirm tor proxychains wget
wget -O /usr/bin/bombardier "https://github.com/codesenberg/bombardier/releases/download/v1.2.5/bombardier-linux-amd64"
chmod +x /usr/bin/bombardier