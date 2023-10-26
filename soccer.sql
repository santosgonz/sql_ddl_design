DROP DATABASE IF EXISTS craigslist;

CREATE DATABASE craigslist;

\c craigslist

CREATE TABLE teams (
    id SERIAL PRIMARY KEY,
    team_name TEXT NOT NULL,
    player TEXT NOT NULL
)

CREATE TABLE players (
    id SERIAL PRIMARY KEY,
    player_name TEXT NOT NULL
)

CREATE TABLE goals (
    id SERIAL PRIMARY KEY,
    players_id INTEGER REFERENCES players(id),
    goals_date INTEGER NOT NULL
)

CREATE TABLE referees (
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL
)

CREATE TABLE matches (
    id SERIAL PRIMARY KEY,
    teams_id INTEGER REFERENCES teams(id)
)

CREATE TABLE times (
    id SERIAL PRIMARY KEY,
    start_date DATE,
    end_date DATE,
    teams_id INTEGER REFERENCES teams(id)
)

-- Wasn't sure how i should approach this