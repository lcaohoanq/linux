#!/bin/bash

# Define the number of commits to make
num_commits=10

# Loop through and make commits
for ((i=1; i<=$num_commits; i++))
do
    # Generate some dummy content (optional)
    echo "Commit $i" > commit_$i.txt
    
    # Stage changes
    git add .
    
    # Commit changes
    git commit -m "Auto commit $i"
    
    # Sleep for a certain duration (e.g., 1 second)
    sleep 1
done
#!/bin/bash

# Define the number of commits to make
num_commits=10

# Loop through and make commits
for ((i=1; i<=$num_commits; i++))
do
    # Generate some dummy content (optional)
    echo "Commit $i" > commit_$i.txt
    
    # Stage changes
    git add .
    
    # Commit changes
    git commit -m "Auto commit $i"
    
    # Sleep for a certain duration (e.g., 1 second)
    sleep 1
done

