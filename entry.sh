#!/bin/bash
cd /config
pip3 install -r "/config/requirements.txt"
crontab "/config/cron"