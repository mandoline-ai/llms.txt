#!/bin/bash

# Pull llms.txt from mandoline.ai and update repo
curl -s https://mandoline.ai/llms.txt -o llms.txt

# Check if file changed
if git diff --quiet llms.txt; then
    echo "No changes to llms.txt"
    exit 0
fi