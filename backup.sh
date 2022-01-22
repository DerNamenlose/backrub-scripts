#! /bin/sh

INSTALL_PATH=$(dirname $(realpath $0))

export PATH=/bin:/sbin:/usr/bin:/usr/sbin

source ./config

./mount.sh

TIMESTAMP=$(date +"%Y-%m-%dT%H-%M-%S")

./backrub create --exclude-from "$EXCLUDES_FILE" -e "$CIFS_MOUNTPOINT" --name "$MACHINE-$TIMESTAMP" --sources /root /etc /home --repository "$REPO"

# unmount the backup space
umount "$CIFS_MOUNTPOINT"
