#!/bin/bash

current_branch=$(git branch --show-current)

chenged=$(git status | grep ".md" | sed 's/.md//;s/^\t*//' | tr '\n' ',' | sed 's/,$/\n/' | cut -b -20)
message=${1:-📝publish blog: 🏷️ $chenged}



git add .
git commit -m "$message"

echo $message

git push origin "$current"