#!/bin/bash

set -euo pipefail

LOG_DIR="/var/log/myapp"
TARGET_DIR="/var/log/myapp"
DAYS_OLD=30

compressed_count=$(find "$LOG_DIR" -name "*.log" -type f -mtime +7 | wc -l)

find "$LOG_DIR" -name "*.log" -type f -mtime +7 -exec gzip {} \;

if [ -d "$TARGET_DIR" ]; then
    deleted_count=$(find "$TARGET_DIR" -name "*.gz" -type f -mtime +"$DAYS_OLD" | wc -l)
    
    find "$TARGET_DIR" -name "*.gz" -type f -mtime +$DAYS_OLD -delete

    echo "Deleted .gz files older than $DAYS_OLD days in $TARGET_DIR"
else
    echo "Error: Directory $TARGET_DIR does not exist."
    exit 1
fi

echo "Compressed files: $compressed_count"
echo "Deleted files: $deleted_count"
