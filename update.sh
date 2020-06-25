#!/bin/bash

cd /Users/jacob/Documents/GitHub/alt03b1.github.io

#clean up
find . -name '*.DS_Store' -type f -delete

#debs
#big sur
dpkg-deb -b ~/Documents/GitHub/alt03b1.github.io/projects/com.alt.bigsur
mv ~/Documents/GitHub/alt03b1.github.io/projects/com.alt.bigsur.deb ~/Documents/Github/alt03b1.github.io/debs

#packages
dpkg-scanpackages -m ./debs . > Packages
bzip2 Packages
