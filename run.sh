#!/bin/bash

# Configuration Options
MATLAB_FILE="" # matlab script name to run via `matlab -r ${MATLAB_FILE}`
EXECUTION_DIRECTORY="" # Directory matlab file is in to run

# Directories to sync with
PROJECT_REMOTE_DIRECTORY="" # On remote machine
PROJECT_LOCAL_DIRECTORY="" # On local machine

USERNAME=""
HOSTS="" # Seperate with commas, no newlines

COPY_FILES="True" # Can be [True/False] in quotes

# DO NOT EDIT BELOW THIS LINE

source venv/bin/activate
fab -H "${HOSTS}" -u "${USERNAME}" \
	deploy_files:"${COPY_FILES},${PROJECT_LOCAL_DIRECTORY},${PROJECT_REMOTE_DIRECTORY}" \
	execute_matlab:"${MATLAB_FILE},${EXECUTION_DIRECTORY}"