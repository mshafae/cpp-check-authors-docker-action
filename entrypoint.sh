#!/bin/sh -l

python3 .action/checks.py authors
exit $?

# echo "resultsx<<EOF" >> $GITHUB_OUTPUT
# python3 .action/checks.py header all
# echo "EOF" >> $GITHUB_OUTPUT