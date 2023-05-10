#!/bin/sh

cd articles || { echo "Could not change to 'articles' directory."; exit 1; }

dirs=(*/)

if [ ${#dirs[@]} -eq 0 ]; then
  echo "No directories found."
  exit 1
fi

echo "Existing posts:"
for i in "${!dirs[@]}"; do
  echo "$((i+1)). ${dirs[$i]}"
done

read -p "Enter the number of the post you want to delete: " index

# Validate user input
if [ "$index" -gt 0 ] && [ "$index" -le "${#dirs[@]}" ]; then
  # Remove symlink
  link_name="${dirs[$((index-1))]%/}"
  unlink "../src/routes/posts/$link_name"
  # Remove the selected directory
  rm -rf "${dirs[$((index-1))]}"
  echo "Deleted post: ${dirs[$((index-1))]}"
else
  echo "Invalid selection."
fi