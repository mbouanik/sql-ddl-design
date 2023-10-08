DROP DATABASE IF EXISTS air_traffic;
CREATE DATABSE air_traffic;


\c air_traffic

CREATE TABLE passenger
(
	id SERIAL PRIMARY KEY,
	first_name TEXT NOT NULL,
	last_name TEXT NOT NULL,
	nationality TEXT NOT NULL,
	passport_nb TEXT NOT NUll
);

CREATE TABLE airlines
(
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL
);

CREATE TABLE destination
(
	id SERIAL PRIMARY KEY,
	country TEXT NOT NULL,
	city TEXT NOT NULL,
	airline_id INTEGER REFERENCES airlines
	
);

CREATE TABLE tickets
(
	id SERIAL PRIMARY KEY,
	seat TEXT NOT NULL,
	departure TIMESTAMP NOT NULL,
	arrival TIMESTAMP NOT NULL,
	passenger_id INTEGER REFERENCES passenger,
	airline_id INTEGER REFERENCES airlines,
	destination_id INTEGER REFERENCES destinations,
	provenance INTEGER REFERENCES destinations 
);