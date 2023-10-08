DROP DATABASE IF EXISTS medical_center;
CREATE DATABASE medical_center; 
\c medical_center

CREATE TABLE doctors 
(
	id SERIAL PRIMARY KEY,
	first_name TEXT NOT NULL,
	last_name TEXT NOT NULL,
	occupational TEXT NOT NULL	
);	

CREATE TABLE diseases
(
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL
);

CREATE TABLE patients 
(
	id SERIAL PRIMARY KEY,
	first_name TEXT NOT NULL,
	last_name TEXT NOT NULL
);

CREATE TABLE visits
(
	id SERIAL PRIMARY KEY, 
	doctor_id INTEGER REFERENCES doctors,
	patient_id INTEGER REFERENCES patients,
	visit_date TIMESTAMP NOT NULL
);

CREATE TABLE diagnoses 
(
	id SERIAL PRIMARY KEY, 
	visit_id INTEGER REFERENCES visits,
	disease_id INTEGER REFERENCES diseases
);