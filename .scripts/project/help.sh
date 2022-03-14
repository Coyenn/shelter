#!/bin/bash
# 👀 Display this message

echo 'Project Management'
echo '                             '
echo 'Usage: project [COMMAND] [ARGUMENTS]'
echo ''
echo 'Commands:'
echo ''
cd "$(dirname "$0")" || exit

for file in ./*; do
	helpLine="$(sed -n '2p' "${file}")"
	echo "$(basename "${file}" .sh) - ${helpLine:2}"
done

echo ''
