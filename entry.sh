#!/bin/bash
pip3 install -r "/appdir/config/requirements.txt"
crontab "/appdir/config/cron"
tail -f /var/log/faillog > /var/log/tail