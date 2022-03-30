#!/usr/bin/env bash

set -e

# Search for whitespace in folders you have version controlled files in
test_whitespace=`find . -type d | grep " " | wc -l`

# Default exit code
exit_code=0

# If number of folders is not zero, throw an error
if [ "$test_whitespace" -ne 0 ]; then
    exit_code=1
fi

exit $exit_code
