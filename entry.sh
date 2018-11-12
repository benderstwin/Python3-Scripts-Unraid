#!/bin/bash
pip3 install -r "/config/requirements.txt"
crontab "/config/cron"
tail -f /var/log/faillog > /dev/null