#!/bin/bash

# Sometimes the grip program exceeds its GitHub API rate.
# Othertimes, it is simply too slow.
# Use this script to get past these issues.
# Usage: ./run_it.sh [filename]
#
#   Note: The grip program by default serves README.md
#         If you want to serve another file, you need to provide the filename.

echo -n 'Enter the github username: '

read username       # read the usename

echo -n "Enter ${username}'s github password: "

stty_orig=`stty -g` # save original terminal setting.
stty -echo          # turn-off echoing.
read passwd         # read the password
stty $stty_orig     # restore terminal setting.

grip --user="${username}" --pass="${passwd}" $1

