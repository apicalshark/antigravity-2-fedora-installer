#!/usr/bin/env bash
set -euo pipefail

OUTDIR="${OUTDIR:-$HOME/rpkg/}"
mkdir -p "$OUTDIR"

echo "Downloading sources for antigravity2-ide..."
spectool -gS antigravity2-ide.spec

echo "Building antigravity2-ide RPM package..."
rpkg local --outdir "$OUTDIR" --spec antigravity2-ide.spec

echo "Done! Built RPMs can be found in $OUTDIR"