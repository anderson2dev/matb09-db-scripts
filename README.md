# matb09-db-scripts
### HOW TO USE

1. Create a .env file

```env
    # POSTGRES DATABASE CONFIG
    POSTGRES_PASSWORD=teste123
    PG_PASSWORD=teste123
    POSTGRES_DB=matb09-ufba
    POSTGRES_USER=matb09-ufba
    # PGADMIN CONFIG
    PGADMIN_DEFAULT_EMAIL=matb09@ufba.br
    PGADMIN_DEFAULT_PASSWORD_FILE=teste123
```

2. CREATE THE DDL AND DML AT THEIR RESPECTIVE FOLDERS for example
    ```sql
    CREATE TABLE users(
    id uuid PRIMARY KEY,
    username varchar(255) not null,
    password varchar(255) not null
    )
    ```
    into the scripts/tables/table.sql file


3. put the .csv file containing the seed into the datasource folder

4. Run docker compose up in the root folder of the project, then the script will apply all the configurations contained in the .sql files in the container.

The *pgadmin* image will be available in the localhost:8080 and the *postgres* will be available at localhost:5432
