#!/bin/bash
# Bash script to set up the git hooks of a git repository.

MSGS_HEADER="[Git hooks setup]"

echo "$MSGS_HEADER Setting up git hooks..."

HOOKS_DIR=".git/hooks"
COMMIT_MSG_HOOK="$HOOKS_DIR/commit-msg"

mkdir -p $HOOKS_DIR
echo "#!/bin/sh" > $COMMIT_MSG_HOOK
echo "npx --no-install commitlint --edit \"\$1\"" >> $COMMIT_MSG_HOOK
chmod +x $COMMIT_MSG_HOOK

echo "$MSGS_HEADER Done !"
