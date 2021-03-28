#!/bin/bash

xset s off         # don't activate screensaver
xset -dpms         # disable DPMS (Energy Star) features.
xset s noblank     # don't blank the video device

exec /usr/bin/chromium-browser --kiosk --disable-restore-session-state http://localhost/ --start-maximized --window-position=0,0 --window-size=960,540 --force-device-scale-factor=2.05 --use-mobile-user-agent --user-agent="Mozilla/5.0 (iPad; CPU OS 13_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0 Mobile/15E148 Safari/604.1" --hide-scrollbars "$@"
