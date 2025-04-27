#!/bin/bash

# Mount the SSD
SSD_DEVICE="/dev/sdb1"
MOUNT_POINT="/mnt/testssd"
mkdir -p $MOUNT_POINT
sudo mount $SSD_DEVICE $MOUNT_POINT

# Verify data integrity
for i in {1..10}
do
  if grep -q "TESTDATA12345" $MOUNT_POINT/file$i.txt; then
    echo "file$i.txt data OK"
  else
    echo "file$i.txt CORRUPTED!"
  fi
done

# Unmount SSD after verification
sudo umount $MOUNT_POINT
