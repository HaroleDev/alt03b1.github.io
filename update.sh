#!/bin/bash

cd /Users/jacob/Documents/GitHub/alt03b1.github.io

#clean up
find . -name '*.DS_Store' -type f -delete

#debs
#big sur
dpkg-deb -b ~/Documents/GitHub/alt03b1.github.io/projects/com.alt.bigsur

#packages
dpkg-scanpackages debs . > Packages
bzip2 -fks Packages
