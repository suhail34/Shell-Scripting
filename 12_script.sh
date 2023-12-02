#!/bin/bash

# Define variables
CONFIG_FILE="app-config.yaml"

# Function to update configuration based on key-value pairs
update_config() {
  local key="$1"
  local value="$2"

  # Use sed to replace the value for the specified key
  sed -i "s|$key: .*|$key: $value|" "$CONFIG_FILE"
}

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <key> <value>"
  exit 1
fi

# Call the function with provided key and value
update_config "$1" "$2"

echo "Configuration updated for key: $1, value: $2"

