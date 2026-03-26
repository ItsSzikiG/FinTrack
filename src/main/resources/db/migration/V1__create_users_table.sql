Create TABLE users
(
    id         uuid PRIMARY KEY,
    first_name varchar(255) NOT NULL,
    last_name  varchar(255) NOT NULL,
    email      varchar(255) NOT NULL unique,
    password   text NOT NULL,
    role       text NOT NULL,
    created_at timestamptz,
    updated_at timestamptz
);

