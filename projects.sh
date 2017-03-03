#!/usr/bin/env bash
set -e

echo "Type your GitHub id : "
read ghid

repos=`curl -fsSL https://api.github.com/users/$ghid/repos | jq -r '.[].clone_url'`

for i in $repos
do
  ghq get $i
done
