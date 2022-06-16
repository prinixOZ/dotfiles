#!/usr/bin/env bash
df -H /dev/sda4 | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $5 }'
