#!/bin/bash
pip3 install -r "/appdir/config/requirements.txt"
crontab root "/appdir/config/cron"
chmod a+x /appdir/collectors/*
tail -f /var/log/faillog > /var/log/tail
cron -f