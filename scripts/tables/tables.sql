CREATE TABLE IF NOT EXISTS user (
    id uuid PRIMARY KEY,
    user_name varchar(255) NOT NULL,
    password varchar(255) NOT NULL,
);