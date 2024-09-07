CREATE TABLE "feed" (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    topics jsonb not null,
    is_favorite BOOLEAN DEFAULT FALSE,
    is_public BOOLEAN DEFAULT TRUE,
    user_id INT REFERENCES "user"(id) ON DELETE CASCADE
);