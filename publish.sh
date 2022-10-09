#!/bin/bash

current_branch=$(git branch --show-current)
message=${1:-publish blog}

echo $message
echo $current_branch



# git push origin "$current"