#!/bin/bash

# Prompt the user for a directory to lock
read -p "Enter the directory you want to lock: " TARGET_DIR

# Check if the input is a valid directory
if [ -d "$TARGET_DIR" ]; then
  sudo chown root:root "$TARGET_DIR"
  echo "The directory '$TARGET_DIR' has been locked."
else
  echo "Error: '$TARGET_DIR' is not a valid directory."
  exit 1
fi
