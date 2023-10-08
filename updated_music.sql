DROP DATABASE IF EXISTS music;

CREATE DATABASE music;

\c music


CREATE TABLE artists 
(
	id SERIAL PRIMARY KEY,
	artist_name TEXT NOT NULl
);


CREATE TABLE producers 
(
	id SERIAL PRIMARY KEY,
	first_name TEXT NOT NULL,
	last_name TEXT NOT NULL

);

CREATE TABLE albums
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
 
);

CREATE TABLE songs
(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  duration_in_seconds INTEGER NOT NULL,
  release_date DATE NOT NULL
  producer_id INTEGER REFERENCES producers,
  artist_id INTEGER REFERENCES artists,
  album_id INTEGER REFERENCES albums
);



