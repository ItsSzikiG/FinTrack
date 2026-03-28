CREATE TABLE accounts
(
    id         BIGSERIAL PRIMARY KEY,
    name       TEXT NOT NULL,
    type       TEXT NOT NULL,
    currency   VARCHAR(3),
    balance    NUMERIC(19, 2),
    user_id    BIGINT REFERENCES users (id),
    created_at TIMESTAMPTZ,
    updated_at TIMESTAMPTZ
);

