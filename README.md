# Python3-Scripts-Unraid
Container built for unraid to run schedule pyton collector scripts for telegraf, influxdb, grafana.

Create a directory in your appdata folder call python3-scripts
In the new directory, create a directory called config, and another for your collection scripts (I called mine "collectors")
Config directory requires a file called "cron" that you will be imported to crontab when the container is started
config directory also contains a requirements.txt that will be pulled for pip install when the container is started
You can add more cronjobs, or add to the requirements.txt and just restart the container to update

Map /appdir to /mnt/user/appdata/python3-scripts (or where you made the new directory structure)