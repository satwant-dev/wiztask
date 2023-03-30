backup_name=~/db_backups-`date +%Y-%m-%d-%H%M`
mongodump --authenticationDatabase=admin --host 192.168.82.201 --port 27017 -u satwantadmin --password ******* -d store  --out $backup_name
tar czf $backup_name.tar.gz $backup_name
aws s3 cp $backup_name.tar.gz s3://mywizbkt/
rm -rf $backup_name
rm $backup_name.tar.gz
