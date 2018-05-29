#!/bin/bash
sed -i -e 's/b0cbcef5a486d9636472ac27f8e11a9d/'"$secret"'/g'  /opt/JSMTProxy/config.json
pm2 start /opt/JSMTProxy/mtproxy.js -i max --no-daemon
