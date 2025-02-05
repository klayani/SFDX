#!/bin/bash
# Exit immediately if a command exits with a non-zero status
set -e

# Function to handle errors and display the line number where the failure occurred
error_handler() {
    echo "Script failed at line ${BASH_LINENO[0]}"
    exit 1
}

# Trap any error and call error_handler
trap 'error_handler' ERR


# Prompt user for the Copado work item number
#read -p "Enter the Copado work item number (e.g., US-0000042): " WORK_ITEM


# Define necessary variables (modify as needed)
FEATURE_BRANCH="feature/US-0000028"
METADATA_DIR="C:\Users\kalyani.m\Desktop\salesforce"
OUTPUT_DIR="force-app/main/default"
MANIFEST_FILE="$METADATA_DIR\manifest\package.xml"
COMMIT_MESSAGE="Moving changes from metadata pipeline to source format pipeline"

sf copado:auth:set -u kpeyyala2@assessment.com

#sf org list
# Set the Copado work item
sf copado:work:set -s US-0000027


sf copado:work:display
# Convert metadata to source format
sf force:mdapi:convert --root-dir "$METADATA_DIR" --output-dir "$OUTPUT_DIR" --manifest "$MANIFEST_FILE"

# Add and commit changes
git add .
git commit -m "$COMMIT_MESSAGE"

# Push changes to Copado
sf copado:work:push --force