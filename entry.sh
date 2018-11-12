#!/bin/bash
pip3 install -r "/appdir/config/requirements.txt"
crontab "/appdir/config/cron"
service cron start
chmod +x /appdir/collectors/
tail -f /var/log/faillog > /var/log/tail