DROP DATABASE IF EXISTS craiglist;
CREATE DATABASE craiglist;

\c craiglist

CREATE TABLE regions 
(
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL
);

CREATE TABLE users
(
	id SERIAL PRIMARY KEY, 
	username TEXT NOT NULL,
	password TEXT NOT NULL,
	prefered_region INTEGER REFERENCES regions
);

CREATE TABLE categories 
(
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL
	
);

CREATE TABLE posts
(
	id SERIAl PRIMARY KEY,
	title TEXT NOT NULL,
	message TEXT NOT NULL,
	location TEXT NOT NULL,
	user_id INTEGER REFERENCES users,
	region_id INTEGER REFERENCES regions,
	category_id INTEGER REFERENCES categories
	
);



