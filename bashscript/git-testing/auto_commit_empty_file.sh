#!/bin/bash

# Get the number of commits from command-line argument or set a default value
num_commits=${1:-10}

# Initialize a variable for the commit message
commit_message="Auto commit"

# Loop through and make commits
for ((i=1; i<=$num_commits; i++))
do
   # Commit changes with the commit message
    git commit --allow-empty -m "$commit_message $i"
done
