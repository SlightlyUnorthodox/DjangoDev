# Run setup vagrant box setup
export DEBIAN_FRONTEND=noninteractive

#!/bin/bash

# Exit on first error
set -e

# Change to working directory
cd /vagrant

# Check git installation
apt-get update
apt-get install -y git

# Get updated repository
git pull

# Enforce Unix line-endings
{
	git rm --cached -rf .
	git diff --cached --name-only -z | xargs -n 50 -0 git add -f
	git ls-files -z | xargs -0 rm
	git checkout .
} || {
	echo "WARNING: git matched no files for line endings fix."
}

# Import helper functions
. bootstrap_functions.sh

# Run installation procedures
echo "RUNNING: 'install_prereqs'"
install_prereqs

# Run python installation procedures
echo "RUNNING: 'install_python_nltk"
install_python_nltk

# Run django installation procedures
echo "RUNNING: 'intall_django_server'"
install_django_server

echo "MESSAGE: Development Server Provisioned Successfully"