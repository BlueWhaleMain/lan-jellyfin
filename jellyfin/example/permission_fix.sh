#!/bin/sh
chown -R 1000:1000 /config
chmod -R 640 /config
chmod -R +X /config
ls -l /config

chown -R 1000:1000 /cache
chmod -R 640 /cache
chmod -R +X /cache
ls -l /cache

chown -R 1000:1000 /media
chmod -R 640 /media
chmod -R +X /media
ls -l /media
