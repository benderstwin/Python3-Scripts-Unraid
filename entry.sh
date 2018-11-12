#!/bin/bash
pip3 install -r "/appdir/config/requirements.txt"
crontab "/appdir/config/cron" root
chmod a+x /appdir/collectors/*
cron -f