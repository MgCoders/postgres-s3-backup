# Install the pgpass file to create a connection to the database without
# the need to type in a password
export PG_S3_BACKUP_PORT='5432'
echo "$PG_S3_BACKUP_HOST:$PG_S3_BACKUP_PORT:$PG_S3_BACKUP_DB:$PG_S3_BACKUP_USER:$PG_S3_BACKUP_PASSWORD" >> /root/.pgpass
chmod 0600 /root/.pgpass
/root/s3backup_pg.sh $PG_S3_BACKUP_BUCKET $PG_S3_BACKUP_USER $PG_S3_BACKUP_PASSWORD $PG_S3_BACKUP_DB $PG_S3_BACKUP_HOST
