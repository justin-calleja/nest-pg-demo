DROP SCHEMA IF EXISTS public CASCADE;

CREATE SCHEMA public;

SET search_path = public;

CREATE TABLE users (
    id serial PRIMARY KEY,
    email varchar(100) UNIQUE NOT NULL
);

