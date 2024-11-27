#!/bin/bash

# Check agetty version
agetty --version

# Configure agetty for serial console access
sudo tee /etc/systemd/system/serial-getty@.service << EOF
[Unit]
Description=Serial Getty on %I
After=systemd-user-sessions.service plymouth-quit-wait.service
[Service]
ExecStart=-/sbin/agetty --keep-baud 115200,38400,9600 --noclear %I \$TERM
Type=idle
Restart=always
UtmpIdentifier=%I
TTYPath=/dev/%I
TTYReset=yes
TTYVHangup=yes
KillMode=process
IgnoreSIGPIPE=no
SendSIGHUP=yes
[Install]
WantedBy=getty.target
EOF