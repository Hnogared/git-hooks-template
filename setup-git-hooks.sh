#!/bin/bash
# Bash script to set up the git hooks of a git repository.

MSGS_HEADER="[Git hooks setup]"
SRC_HOOKS_DIR=".githooks"
DEST_HOOKS_DIR=".git/hooks"

echo "$MSGS_HEADER Setting up git hooks..."

# Exit if any of the following commands exits with non zero
set -e

mkdir -p "$DEST_HOOKS_DIR"
cp "$SRC_HOOKS_DIR"/* "$DEST_HOOKS_DIR"

chmod -R +x "$DEST_HOOKS_DIR"

echo "$MSGS_HEADER Done !"
