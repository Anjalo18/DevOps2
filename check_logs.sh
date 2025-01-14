#!/bin/bash

# Define the log file name
LOG_FILE="log_message.txt"

# Check if the log file exists. Exit with an error if it doesn't
if [ ! -f "$LOG_FILE" ]; then
	echo "Error : $LOG_FILE not found"
	exit 1
fi

# Search for "SUCCESS" in the log file
if grep -q "SUCCESS" "$LOG_FILE"; then
	echo "Tests passed successfully !"
else
	
	# If "SUCCESS" is not found, print an error message and the log contents
	echo "Test failed. Here are the logs :"
	cat "$LOG_FILE"
	exit 1
fi
