DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;

\c outer_space

REATE TABLE galaxies
(
	id SERIAL PRIMARY KEY,
	galaxy_name TEXT NOT NULL
	
); 

CREATE TABLE planets
(
	id SERIAL PRIMARY KEY,
	planet_name TEXT NOT NULL,
	orbital_period_in_years FLOAT NOT NULL,
	orbits_around TEXT NOT NULL,  
	galaxy_id INTEGER REFERENCES galaxies
	
);

CREATE TABLE moons
(
	id SERIAL PRIMARY KEY,
	moon_name TEXT NOT NULL,
	planet_id INTEGER REFERENCES planets
	
);