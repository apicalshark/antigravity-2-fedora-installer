#!/usr/bin/env bash
set -e

mkdir -p ~/rpkg/

echo "Downloading sources for antigravity2-ide..."
spectool -gS antigravity2-ide.spec

echo "Building antigravity2-ide RPM package..."
rpkg local --outdir ~/rpkg/ --spec antigravity2-ide.spec

echo "Done! Built RPMs can be found in ~/rpkg/"