#!/bin/bash
# Directory containing this script
THIS_DIR="$(dirname "$(realpath "$0")")"

# Related directories
BUILD_DIR="$THIS_DIR/build"
TEXPACKAGE_DIR="$THIS_DIR/texpackage"
IPEHOME_DIR="$HOME/.ipe"

# Copy necessary LaTeX-related files into build directory
mkdir -p "$BUILD_DIR"
cp -r "$TEXPACKAGE_DIR/." "$BUILD_DIR"

# IPE Configuration
# See more: http://ipe.otfried.org/manual/manual_40.html
export IPELATEXDIR="${IPELATEXDIR:-"$BUILD_DIR"}"
export EDITOR="${EDITOR:-/usr/bin/atom}"
export IPESTYLES="_:$IPEHOME_DIR/styles:$THIS_DIR/styles"
export IPELETPATH="_:$IPEHOME_DIR/ipelets:$THIS_DIR/ipelets"

# Run IPE located in $PATH
ipe
