#!/bin/bash
pip3 install -r "/appdir/config/requirements.txt"
#touch "/appdir/cron.log"
#crontab "/appdir/config/cron" root
chmod +x "/appdir/collectors/*"
#cron -f