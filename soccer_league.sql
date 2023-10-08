DROP DATABASE IF EXISTS soccer_league;
CREATE DATABASE soccer_league;

\c soccer_league

CREATE TABLE teams 
(
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	city TEXT NOT NULL
);

CREATE TABLE players
(
	id SERIAL PRIMARY KEY,
	first_name TEXT NOT NULL,
	last_name TEXT NOT NULL,
	team_id INTEGER REFERENCES teams,
	
);

CREATE TABLE goals
(
	id SERIAL PRIMARY KEY,
	player_id INTEGER REFERENCES palyers,
	match_id INTEGER REFERENCES matches,
);

CREATE TABLE referees
(
	id SERIAL PRIMARY KEY,
	first_name TEXT NOT NULL,
	last_name TEXT NOT NULL
);

CREATE TABLE seasons
(
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL
);

CREATE TABLE matches
(
	id SERIAL PRIMARY KEY,
	team1 INTEGER REFERENCES teams,
	team2 INTEGER REFERENCES teams,
	season_id INTEGER REFERENCES seasons,
	referee_id INTEGER REFERENCES referees,
);



