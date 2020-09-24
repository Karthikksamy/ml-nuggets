#!/bin/bash

# Bash "strict mode", to help catch problems and bugs in the shell
# script. Every bash script you write should include this. See
# http://redsymbol.net/articles/unofficial-bash-strict-mode/ for
# details.
set -euo pipefail

# Prevent manual feedback to apt-get
export DEBIAN_FRONTEND=noninteractive

# Update the package listing, so we know what package exist:
apt-get update --fix-missing

# Install security updates:
apt-get -y upgrade

# Install a new package, without unnecessary recommended packages:
#apt-get -y install --no-install-recommends syslog-ng
#apt-get -y install --no-install-recommends build-essential

#Enable python3-dev is required to call c code from Python 
#apt-get -y install --no-install-recommends python3-dev
#apt-get -y install --no-install-recommends gcc 
apt-get -y install --no-install-recommends wget bzip2 ca-certificates curl git
#apt-get -y install --no-install-recommends g++
#apt-get -y install --no-install-recommends make

# Delete cached files we don't need anymore:
apt-get clean
rm -rf /var/lib/apt/lists/*

#RUN apt-get update --fix-missing && \
#    apt-get install -y wget bzip2 ca-certificates curl git && \
#    apt-get clean && \
#    rm -rf /var/lib/apt/lists/*
