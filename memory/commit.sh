#!/bin/bash
# Helper script: stage and commit memory changes
# Usage: ./memory/commit.sh "optional message"

cd /workspace/project

MSG="${1:-memory: daily entry}"

# Stage memory files
git add memory/

# Only commit if there are changes
if git diff --cached --quiet; then
  echo "No changes to commit."
  exit 0
fi

git commit -m "$MSG"
echo "Committed: $MSG"
