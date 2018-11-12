#!/bin/bash
pip3 install -r "/appdir/config/requirements.txt"
touch "/appdir/cron.log"
#crontab "/appdir/config/cron" root
cd "/appdir"
chmod -R +X "/collectors/"
#cron -f
