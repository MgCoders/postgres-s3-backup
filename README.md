# postgres-s3-backup

### based on https://github.com/draffensperger/postgres-s3-backup

Dockerized cron job to backup a Postgres database to Amazon S3 every hour.
Works with Postgres 9.5

It expects the following environment variables to be set:

-  `PG_S3_BACKUP_BUCKET` - S3 bucket to use backup storage
-  `PG_S3_BACKUP_ACCESS_KEY` - AWS access key to authorize writing to the bucket
-  `PG_S3_BACKUP_SECRET_KEY` - AWS secret key to authorize writing to the bucket
-  `PG_S3_BACKUP_HOST` - Host of database to backup
-  `PG_S3_BACKUP_USER` - User of database to backup
-  `PG_S3_BACKUP_DB` - Name of database to backup
-  `PG_S3_BACKUP_PASSWORD` - Password for user
