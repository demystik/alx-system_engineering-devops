#!/bin/bash

# Set your GitHub username and repository name
#USERNAME="demystik"
#REPO_NAME="AirBnB_clone_v2"

# Set the commit message
COMMIT_MESSAGE="new file added"

# Loop through each file in the current directory
for file in *; do
  # Check if the file is not a directory
  if [ -f "$file" ]; then
    # Add the file
    git add "$file"

    # Commit the file with the specified commit message
    git commit -m "$COMMIT_MESSAGE"

    # Push the file to the GitHub repository
    # git push "git@github.com:$USERNAME/$REPO_NAME.git"
    git push
  fi
done

