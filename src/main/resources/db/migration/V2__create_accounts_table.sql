Create TABLE accounts
(
    id         uuid PRIMARY KEY,
    name       text not null,
    type       text not null,
    currency   VARCHAR(3),
    balance    NUMERIC(19, 2),
    user_id    uuid references users (id),
    created_at timestamptz,
    updated_at timestamptz
);

