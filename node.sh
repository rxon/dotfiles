#!/usr/bin/env sh

# To update node and npm with nodebrew.
# Run this file with `sudo`.
# Be sure to installed npm

echo "Type latest node version : "
read NODE_VAR

echo Installing node $NODE_VAR
nodebrew install-binary $NODE_VAR
nodebrew use $NODE_VAR

echo Installing npm libraries to global.
npm i -g --unsafe-perm nodemon now

echo -e "\033[0;36mFinish!\033[0;39m"