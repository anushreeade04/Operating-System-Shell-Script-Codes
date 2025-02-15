#!/bin/bash


validusername() {
  local username="$1"
  
  
  if [[ "$username" =~ ^[a-zA-Z][a-zA-Z0-9_-]{2,15}$ ]]; then
    echo "Valid username"
  else
    echo "Invalid username"
  fi
}

validusername "$1"

