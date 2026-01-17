#!/bin/bash

if [[ "$SHELL" == *"zsh"* ]]; then
    HISTORY_FILE="$HOME/.zsh_history"
else
    HISTORY_FILE="$HOME/.bash_history"
fi

echo "Top 10 Most Used Commands"
echo "-------------------------"

awk -F';' '{print $2}' "$HISTORY_FILE" | awk '{print $1}' | sort | uniq -c | sort -nr | head -10

