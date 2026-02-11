#!/bin/bash

# Script to set up and run the AI agent

# Error handling function
error_exit()
{
    echo "Error: $1"
    exit 1
}

# Update package list
echo "Updating package list..."
sudo apt-get update || error_exit "Failed to update package list"

# Install dependencies
echo "Installing necessary packages..."
sudo apt-get install -y python3 python3-pip || error_exit "Failed to install dependencies"

# Setting up virtual environment
echo "Setting up virtual environment..."
python3 -m venv venv || error_exit "Failed to create virtual environment"
source venv/bin/activate || error_exit "Failed to activate virtual environment"

# Install requirements
echo "Installing requirements..."
pip install -r requirements.txt || error_exit "Failed to install requirements"

# Running the AI agent
echo "Starting the AI agent..."
python main.py || error_exit "AI agent failed to run"

echo "AI agent is running!"