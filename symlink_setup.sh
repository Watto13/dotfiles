#!/bin/bash

# Symlink .config directory

source_dir = "./config"
target_dir = "~/.config"

# Check if source directory exists
if [ ! -d "$source_dir" ]; then
  echo "Error: Source directory '$source_dir' does not exist."
  exit 1
fi

# Check if target directory exists
if [ ! -d "$target_dir" ]; then
  echo "Error: Target directory '$target_dir' does not exist."
  exit 1
fi

# Loop through each entry in the source directory
for entry in "$source_dir"/*; do
  # Check if it's a directory (skip files)
  if [ -d "$entry" ]; then
    # Extract the folder name from the path
    folder_name=$(basename "$entry")
    
    # Create a symlink in the target directory pointing to the source folder
    ln -s "$entry" "$target_dir/$folder_name"
    
    echo "Created symlink: $target_dir/$folder_name -> $entry"
  fi
done

echo "Symlinking .config completed."

# Symlink .screenlayout directory
# Ask user for confirmation for screenlayout case insensitive
read -p "Symlink .screenlayout? (Y/N) " answer

if [[ $answer =~ ^[Yy]$ ]]; then
  ln -s "screenlayout" to "~/.screenlayout"
else
  echo "Skipping Screen Layout Config"
fi
done
