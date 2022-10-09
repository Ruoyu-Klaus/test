#!/bin/bash

current_branch=$(git branch --show-current)
status=$(git status)
chenged=$(git status | grep ".md" | sed 's/.md//;s/^\t*//' | tr '\n' ',' | sed 's/,$/\n/' | cut -b -20)
message=${1:-📝publish blog: 🏷️ $chenged}

echo $status
echo $message

git add .
git commit -m "$message"



# git push origin "$current"