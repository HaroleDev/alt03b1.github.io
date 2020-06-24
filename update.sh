#!/bin/bash

#clean up
find . -name '*.DS_Store' -type f -delete

#debs FINISH
#dpkg-deb --bZlzma ~/projects/

#packages
dpkg-scanpackages -m ./debs > Packages
bzip2 -fks Packages
