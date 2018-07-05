#!/bin/bash
# Directory containing this script
THIS_DIR="$(dirname "$(realpath "$0")")"

# IPE Configuration
# See more: http://ipe.otfried.org/manual/manual_40.html
export EDITOR=atom
export IPELATEXDIR="$THIS_DIR/build"

# Run IPE located in $PATH
ipe
