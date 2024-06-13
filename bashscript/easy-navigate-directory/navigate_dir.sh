#!/bin/bash

# Check if a directory name is provided
if [ -z "$1" ]; then
	echo "Usage: $0 <directory_name>"
	exit 1
fi

DIRECTORY="$1"

# Check if the directory exists
if [ ! -d "$DIRECTORY" ]; then
	echo "Directory $DIRECTORY does not exist."
	exit 1
fi

# Print the full path of the directory
echo "$(pwd)/$DIRECTORY"

# Change directory to the specified directory
cd "$DIRECTORY" || exit

# Print a message to indicate the directory change
echo "Changed directory to: $(pwd)"
