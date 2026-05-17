#!/bin/bash

set -e

mkdir -p /tmp/devops-test || echo "Failed to create directory"

cd /tmp/devops-test || echo "Failed to navigate to directory"

touch /tmp/devops-test/test_file.txt || echo "Failed to create file"

echo "Script completed successfully"
