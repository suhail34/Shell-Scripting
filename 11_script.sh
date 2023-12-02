#!/bin/bash

# Check if the script is executed with sudo privileges
if [ "$EUID" -ne 0 ]; then
    echo "Please run with sudo or as root."
    exit 1
fi

# Log file path
log_file="/var/log/syslog"

# Function to display a menu
display_menu() {
    echo "Log Search Script"
    echo "1. Search for 'error' messages"
    echo "2. Search for 'warning' messages"
    echo "3. Search for a custom pattern"
    echo "4. Exit"
}

# Function to perform the search
search_logs() {
    case $choice in
        1)
            grep -i 'error' "$log_file"
            ;;
        2)
            grep -i 'warning' "$log_file"
            ;;
        3)
            read -p "Enter custom pattern to search: " custom_pattern
            grep -i "$custom_pattern" "$log_file"
            ;;
        4)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 4."
            ;;
    esac
}

# Main script
while true; do
    display_menu

    read -p "Enter your choice (1-4): " choice

    search_logs
done
