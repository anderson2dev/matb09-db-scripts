#!/bin/bash
echo "script started"
echo "creating tables"
for filename in /home/scripts/tables/*.sql; do
    echo "running $filename"
    psql "postgresql://matb09-ufba:teste123@5432/matb09-ufba" -f $filename
done
echo "table creation step finished"
echo "script finished"