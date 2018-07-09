#!/bin/bash
# Directory containing this script
THIS_DIR="$(dirname "$(realpath "$0")")"

# IPE Configuration
# See more: http://ipe.otfried.org/manual/manual_40.html
export IPELATEXDIR="${IPELATEXDIR:-"$THIS_DIR/build"}"
export EDITOR="${EDITOR:-/usr/bin/atom}"
export IPESTYLES="_:/home/kite/.ipe/styles:$THIS_DIR/styles"
export IPELETPATH="_:/home/kite/.ipe/ipelets:$THIS_DIR/ipelets"

# Run IPE located in $PATH
ipe
