#!/usr/bin/env bash
set -euo pipefail

OUTDIR="${OUTDIR:-$HOME/rpkg/}"
mkdir -p "$OUTDIR"

echo "Downloading sources for antigravity2..."
spectool -gS antigravity2.spec

echo "Building antigravity2 RPM package..."
rpkg local --outdir "$OUTDIR" --spec antigravity2.spec

echo "Done! Built RPMs can be found in $OUTDIR"
