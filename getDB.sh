firebase database:get / > db.json --project placard-bolsa
python -m json.tool db.json > database.json
rm db.json
cat database.json
echo ''
echo 'Task Complete'
