#!/bin/bash

# virtual environment activated?
check_venv_activated() {
    if [[ "$VIRTUAL_ENV" != "" ]]; then
        echo "Virtual environment activated: $VIRTUAL_ENV"
    else
        echo "Error: Virtual environment not activated. Exiting..."
        exit 1
    fi
}

# active virtual environment
update_prompt() {
    if [ -n "$VIRTUAL_ENV" ]; then
        VENV_NAME=$(basename "$VIRTUAL_ENV")
        PS1="($VENV_NAME) $PS1"
    fi
}

# Check if the virtual environment folder exists:
if [ -d "venv" ]; then
    echo "Activating existing virtual environment..."
    source venv/Scripts/activate
    check_venv_activated
else
    echo "Creating a new virtual environment..."
    python -m venv venv
    source venv/Scripts/activate
    check_venv_activated
fi

# Update the prompt to show the virtual environment name
update_prompt

# Install required packages
pip install -r requirements.txt

# Run Django migrations and start the server
python manage.py migrate
python manage.py makemigrations
python manage.py migrate
python manage.py runserver
