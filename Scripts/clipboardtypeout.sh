#!/bin/bash
## Clipboard type out tool, bind it too a key combo and will let you copy paste into anything: https://gist.github.com/ethack/110f7f46272447828352768e6cd1c4cb
xclip -selection clipboard -out | xdotool selectwindow windowfocus type --clearmodifiers --delay 25 --window %@ --file -
# \\r 
