#!/bin/bash

xscreensaver -nosplash &

while true; do chromium-browser --enabled --kiosk --start-maximized https://en.m.wikipedia.org; sleep 5s;done
