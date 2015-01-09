#!/usr/bin/env bash

# Install SassC interpreter
mkdir -p /usr/local/src
cd /usr/local/src
curl -kL https://github.com/hcatlin/libsass/archive/master.zip > libsass.zip
unzip libsass.zip

# Install LibSass Library
cd /usr/local/src
curl -kL https://github.com/sass/sassc/archive/master.zip > sassc.zip
unzip sassc.zip

# Set environment variable needed for SassC compilation
export SASS_LIBSASS_PATH="/usr/local/src/libsass-master"

cd sassc-master
make
mv -f $(pwd)/bin/sassc /usr/local/bin/sassc
chmod +x /usr/local/bin/sassc
