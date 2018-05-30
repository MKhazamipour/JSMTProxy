#!/bin/bash
sed -i -e 's/581bbe4b3adb6e61ec18837ac9c0b930/'"$secret"'/g'  /opt/JSMTProxy/config.json
pm2 start /opt/JSMTProxy/mtproxy.js -i max --no-daemon
