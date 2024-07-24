#!/bin/bash

for i in {1..100}
do
  # Create test.txt file
  touch test.txt
  
  # Add, commit, and push the changes
  git add .
  git commit -m "added test.txt (iteration $i)"
  git push origin

  # Remove test.txt file
  rm test.txt
  
  # Add, commit, and push the changes
  git add .
  git commit -m "removed test.txt (iteration $i)"
  git push origin

  echo "Iteration $i completed."
done

