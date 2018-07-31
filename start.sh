#!/bin/sh

export FLASK_APP=webphonebook.py
python3 -m flask run #--host=0.0.0.0 ## uncomment to make server visible for external clients

