#!/bin/bash

# This cameras have very old software and current ssh do not connect right away...
# Here are the options that seem to work for OpenSSH_9.8p1.
ssh -o HostKeyAlgorithms=+ssh-rsa -o PubkeyAcceptedAlgorithms=+ssh-rsa  root@192.168.233.1

