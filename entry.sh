#!/bin/bash
pip3 install -r "/appdir/config/requirements.txt"
crontab "/appdir/config/cron"
service cron start
chmod a+x /appdir/collectors/*
tail -f /var/log/faillog > /var/log/tail