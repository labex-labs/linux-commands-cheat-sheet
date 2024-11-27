#!/bin/bash

# Understand the Purpose and Usage of chkconfig Command
sudo chkconfig --list nginx
sudo chkconfig nginx on
sudo chkconfig nginx off

# Configure Service Startup Behavior Using chkconfig
sudo chkconfig --list
sudo chkconfig --add myservice
sudo chkconfig --level 345 myservice on
sudo chkconfig --level 06 myservice off
sudo chkconfig --list myservice