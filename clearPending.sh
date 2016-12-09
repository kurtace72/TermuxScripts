jq 'del(.Pending) | .Statistics.pendingBetsExist="0"' database.json > db2.json
cp db2.json database.json
rm db2.json
cat database.json
echo ''
echo 'Task Complete'
