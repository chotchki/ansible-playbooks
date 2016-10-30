#!/bin/bash

xscreensaver -nosplash &

matchbox-keyboard &

while true; do chromium-browser --enabled --kiosk --start-maximized http://en.m.wikipedia.org; sleep 5s;done
