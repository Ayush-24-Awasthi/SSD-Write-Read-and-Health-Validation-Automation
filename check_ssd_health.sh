#!/bin/bash

SSD_DEVICE="/dev/sdb"

# Check SSD health using smartctl
smartctl -a $SSD_DEVICE | tee /mnt/testssd/ssd_health_report.txt

echo "SSD Health Report generated successfully."
