#!/bin/bash

# Check if the number of commits argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <number_of_commits>"
    exit 1
fi

# Get the number of commits from command-line argument
num_commits=$1

# Initialize a variable for the commit message
commit_message="Auto commit"

# Loop through and make commits
for ((i=1; i<=$num_commits; i++))
do
    # Commit changes with the commit message and allow-empty flag
    git commit --allow-empty -m "$commit_message $i"
done
