#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git"

if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed."
    git --version
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    git) echo "Git: Distributed version control system built for open collaboration" ;;
    vlc) echo "VLC: Open-source multimedia player" ;;
    firefox) echo "Firefox: Open web browser promoting privacy" ;;
    apache2) echo "Apache: Web server powering the internet" ;;
    *) echo "Unknown package" ;;
esac
