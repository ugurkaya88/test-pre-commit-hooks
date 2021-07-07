#!/usr/bin/env bash
set -e

filesToCommit="$(git diff-index --cached --name-only --diff-filter=d HEAD | xargs)"

mvn spotless:apply

git add ${filesToCommit}

exit 0
