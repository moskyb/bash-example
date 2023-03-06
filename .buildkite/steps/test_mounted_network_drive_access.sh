#!/bin/bash

set -euo pipefail

mounted_directory="$HOME/Desktop"

echo "--- Checking access to $mounted_directory"

ls -al "$mounted_directory"
