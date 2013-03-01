#!/usr/bin/env bash

#
# Installation of Node.js environment on Mac OS X and Linux/Unix platforms
# Note: this probably also works under Cygwin in Windows XP/7/8 although it has
# not been tested.
#
# Created by Solobit 2013 (c)
#
#

# Sanity checks

##
# Git must be installed, have a locatable path and usable from the shell
hash git 2>/dev/null || {
  echo >&2 "I require git but it's not installed. Will exit now.";
  exit 1;
}

##
# Now we can safely continue only if we're not root
[[ $EUID -ne 0 ]] || {
   echo "This script may not be run as root!" 1>&2
   exit 1;
}

##
# This ensures we compile the software as a 'safe' normal user and prevent some
# permission escalation techniques on any binary subshell/forks that may be
# hijacked.

[[ -d "/usr/local/src" ]] || mkdir -p /usr/local/src
cd /usr/local/src
git clone https://github.com/joyent/node.git
cd node

# Just get a stable release for now
git checkout v0.8.20-release

# Setup the source to be compiled (build-tools)
./configure --prefix="/usr/local"
make
make install

# Done!
