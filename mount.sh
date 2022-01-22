#! /bin/sh

export PATH=/bin:/sbin:/usr/bin:/usr/sbin

source ./config

# mount the backup space
mount -t cifs -ocredentials="$CIFS_CREDENTIALS" "$CIFS_SHARE" "$CIFS_MOUNTPOINT"
