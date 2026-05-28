#!/usr/bin/env bash
set -e

mkdir -p ~/rpkg/

echo "Downloading sources for antigravity2..."
spectool -gS antigravity2.spec

echo "Building antigravity2 RPM package..."
rpkg local --outdir ~/rpkg/ --spec antigravity2.spec

echo "Done! Built RPMs can be found in ~/rpkg/"
