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

-- Queries
SELECT COUNT(name) FROM animals;
SELECT COUNT(name) FROM animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) FROM animals;
SELECT neutered, MAX(escape_attempts) FROM animals GROUP BY neutered ORDER BY MAX(escape_attempts) DESC LIMIT 1;
SELECT species, MIN(weight_kg) as min_weight, MAX(weight_kg) as max_weight FROM animals GROUP BY species;
SELECT species, AVG(escape_attempts) FROM animals WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31' GROUP BY species;

-- naming became ambigous so I had to rename my column names
 ALTER TABLE owners RENAME COLUMN id TO owned_id;
 
--  animals owned by Melody Pond
SELECT id, name, full_name FROM animals INNER JOIN owners ON animals.owner_id = owners.owned_id WHERE full_name='Melody Pond';

-- renaming my attributes ambigous
ALTER TABLE species  RENAME COLUMN id TO species_id;
ALTER TABLE species  RENAME COLUMN name TO species_name;

-- List of all animals that are pokemon (their type is Pokemon).
SELECT id, name, species_name FROM animals INNER JOIN species ON animals.species_id = species.species_id WHERE species_name='Pokemon';

-- List all owners and their animals, remember to include those that don't own any animal.
SELECT owned_id, full_name, name FROM animals RIGHT JOIN owners ON animals.owner_id = owners.owned_id;

-- How many animals are there per species?
SELECT species.species_id, species.species_name, count(animals.id) myCounts from species LEFT JOIN animals ON species.species_id=animals.species_id GROUP BY species.specieS_id, species.species_name;

-- List all Digimon owned by Jennifer Orwell.
SELECT id, name, owner_id, species_name FROM animals INNER JOIN species ON animals.species_id = species.species_id WHERE species.species_name='Digimon' AND owner_id=2;

-- List all animals owned by Dean Winchester that haven't tried to escape.
SELECT id, name,full_name, escape_attempts FROM animals INNER JOIN owners ON animals.owner_id = owners.owned_id WHERE full_name='Dean Winchester' AND animals.escape_attempts=0;

SELECT owned_id, full_name, count(animals.id) Possesions from owners LEFT JOIN animals ON  owners.owned_id=animals.owner_id GROUP BY owned_id, full_name;

-- joining table
SELECT a.name
FROM animals a
JOIN visits v ON a.id = v.animal_id
JOIN vets ve ON v.vet_id = ve.id
WHERE ve.name = 'William Tatcher'
ORDER BY v.visit_date DESC
LIMIT 1



