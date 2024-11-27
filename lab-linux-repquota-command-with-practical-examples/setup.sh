#!/bin/bash

# Create a new user named 'testuser'
sudo useradd testuser

# Set disk quota limit for 'testuser'
sudo setquota -u testuser 100M 200M 0 0 /