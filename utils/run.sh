#!/bin/bash
set -euo pipefail
set -x

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cleanup() {
    echo "An error occurred. Cleaning up..."
}
trap cleanup ERR

echo "Executing script $0 ..."

# Show project state
git status
git --no-pager diff
git --no-pager diff --cached
tree -l

# Create the repomix right at the start
repomix --include-empty-directories

# Now we do some very basic CI/CD type things (lol)

# Your commands here*
"$SCRIPT_DIR/shellcheck.sh"

# Do some automated tests
crystal spec

# Attempt to build and deploy:
crystal build src/chatgpt_gateway.cr
rsync -vC chatgpt_gateway root@mmm.ar-ciel.org:/usr/local/bin/
rm -f chatgpt_gateway

# Do a test run (for now this just terminates, maybe later it can go into the background replacing any other processes?)
ssh david@mmm.ar-ciel.org -C "chatgpt_gateway"

echo "Script $0 completed successfully!"
