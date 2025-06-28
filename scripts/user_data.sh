#!/bin/bash
sudo apt update -y
sudo apt install -y python3-pip python3-dev libpq-dev nginx curl
pip3 install django psycopg2-binary gunicorn boto3