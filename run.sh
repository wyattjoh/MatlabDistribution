#!/bin/bash

# Configuration Options
MATLAB_FILE=""
EXECUTION_DIRECTORY=""

PROJECT_REMOTE_DIRECTORY=""
PROJECT_LOCAL_DIRECTORY=""

USERNAME=""
HOSTS="" # Seperate with commas, no newlines

COPY_FILES="True" # Can be [True/False] in quotes

# DO NOT EDIT BELOW THIS LINE

source venv/bin/activate
fab -H "${HOSTS}" -u "${USERNAME}" \
	deploy_files:"${COPY_FILES},${PROJECT_LOCAL_DIRECTORY},${PROJECT_REMOTE_DIRECTORY}" \
	execute_matlab:"${MATLAB_FILE},${EXECUTION_DIRECTORY}"