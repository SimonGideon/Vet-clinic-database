/* Database schema to keep the structure of entire database. */

CREATE TABLE  animal(
id SERIAL PRIMARY KEY,
name VARCHAR(50),
date_of_birth DATE,
escape_attempts INT,
neutered bool,
weight_kg decimal);
