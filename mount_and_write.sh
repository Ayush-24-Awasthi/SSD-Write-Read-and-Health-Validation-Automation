#!/bin/bash

# Identify the SSD device and the mount point
SSD_DEVICE="/dev/sdb1"
MOUNT_POINT="/mnt/testssd"

# Create mount point directory
mkdir -p $MOUNT_POINT

# Mount the SSD
sudo mount $SSD_DEVICE $MOUNT_POINT

# Write random data to the SSD
for i in {1..10}
do
  echo "TESTDATA12345" > $MOUNT_POINT/file$i.txt
done

# Unmount the SSD
sudo umount $MOUNT_POINT
echo "Data written and SSD unmounted successfully."
