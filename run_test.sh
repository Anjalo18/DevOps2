#!/bin/bash

# Switch to the "dev" branch
git checkout dev

echo "-----------------------------"

# Check Python version to verify its installation
echo "Running tests, checking Python version..."
python3 --version

# Exit with an error message if python is not installed 
if [ $? -ne 0 ]; then
	echo "Error : Python is not installed, the test failed."
	exit 1
fi

# Run a simple Python test script
echo "Running a second test..."
python3 -c "print('Tets passed !')"

# Indicate that the test was successful
echo "Test passed."
echo "-------------------------------"
echo "SUCCESS"

#git status

# Check for uncommitted changes and handle them
#if [ -n "$(git status --porcelain)" ]; then
#	echo "Changes detected."
#	git add .
#	git commit -m "Changes added on $(date '+%d/%m/%y %H:%M')"
#else
#	echo "No changes  detected"
#fi

# Switch to the "staging" branch and merge changes from "dev"
#git checkout staging
#git merge dev

# Confirm if the push was successful or exit with an error
#echo "Etat du dépôt après merge :"
#git status

# Push the "staging" branch to the remote repository
#git push origin staging

# Confirm if the push was succesful or exit with an error
#if [ $? -eq 0 ]; then
#	echo "Push to the 'staging' branch was succesful."
#else
#	echo "Error : Push failed"
#	exit 1
#fi
