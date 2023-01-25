/*Queries that provide answers to the questions from all projects.*/

SELECT name, date_of_birth, escape_attempts, neutered, weight_kg FROM animals WHERE name LIKE '%mon';
SELECT name, date_of_birth, escape_attempts, neutered, weight_kg  FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';
SELECT name, date_of_birth, escape_attempts, neutered, weight_kg FROM animals WHERE neutered IS true AND escape_attempts<3;
SELECT  date_of_birth from animals WHERE name = 'Agumon' OR name='PikachU';
SELECT name, escape_attempts FROM animals WHERE weight_kg>10.5;
SELECT * FROM animals WHERE neutered=true;
SELECT * FROM animals WHERE NOT name='Gabumon';
SELECT * FROM animals WHERE weight_kg>=10.4 AND weight_kg<=17.3;

-- Trabsaction
BEGIN;
UPDATE animals SET species = 'unspecified';
ROLLBACK;

BEGIN;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE species IS NULL;
SELECT * FROM animals;
COMMIT;

-- Deleting
BEGIN;
DELETE FROM animals;
ROLLBACK;


BEGIN;
DELETE FROM animals WHERE date_of_birth > '2022-01-01';
SAVEPOINT my_savepoint;
UPDATE animals SET weight_kg = weight_kg * -1;
ROLLBACK TO my_savepoint;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
COMMIT;

