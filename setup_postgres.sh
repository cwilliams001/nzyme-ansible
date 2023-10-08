#!/bin/bash

# Define the password
PASSWORD="nzyme"

# Execute PostgreSQL commands
sudo -u postgres psql <<EOF
CREATE DATABASE nzyme;
CREATE USER nzyme WITH ENCRYPTED PASSWORD '$PASSWORD';
GRANT ALL PRIVILEGES ON DATABASE nzyme TO nzyme;
EOF