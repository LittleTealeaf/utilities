#!/bin/bash
# Simple script to clean out all files listed in .gitignore
cat .gitignore | grep -v "#" | while read line; do
	find . -name "$line" -type f -not -path "./.git/*" | while read file; do
		echo "Deleting $file"
		rm "$file"
	done
done