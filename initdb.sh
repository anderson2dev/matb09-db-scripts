#!/bin/bash
echo "Running initdb.sh"
echo "Running config step"
psql -U $POSTGRES_USER -d $POSTGRES_DB -a -f /home/scripts/config/index.sql
echo "Running table creation script"
psql -U $POSTGRES_USER -d $POSTGRES_DB -a -f /home/scripts/tables/index.sql
echo "Running relationships creation script"
psql -U $POSTGRES_USER -d $POSTGRES_DB -a -f /home/scripts/relationships/index.sql
echo "Running indexes creation script"
psql -U $POSTGRES_USER -d $POSTGRES_DB -a -f /home/scripts/indexes/index.sql
echo "Running views creation script"
psql -U $POSTGRES_USER -d $POSTGRES_DB -a -f /home/scripts/views/index.sql
echo "Copying data from datasource"
psql -U $POSTGRES_USER -d $POSTGRES_DB -c " COPY users FROM '/home/datasource/dataset.csv'WITH CSV HEADER"