DROP DATABASE IF EXISTS craigslist;

CREATE DATABASE craigslist;

\c craigslist

CREATE TABLE region (
    id SERIAL PRIMARY KEY,
    state_region TEXT NOT NULL,
    city TEXT NOT NULL
)

CREATE TABLE user (
    id SERIAL PRIMARY KEY,
    user_name TEXT NOT NULL,
    region_id INTEGER REFERENCES (id)
)

CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    text TEXT,
    user_id INTEGER REFERENCES user(id),
    region_id INTEGER REFERENCES region(id)
)

CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    category TEXT NOT NULL
    posts_id INTEGER REFERENCES posts(id)
)
