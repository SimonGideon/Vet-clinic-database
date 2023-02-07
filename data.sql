/* Populate database with sample data. */

INSERT INTO animals (
name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES('Agumon', DATE '2020-02-03',0, false, 10.23), 
('Gabumon', DATE '2018-11-15',2,true,8),
('Pikachu', DATE '2021-01-07',1,false,15.04),
('Devimon', DATE '2017-05-12',5,true,11);

INSERT INTO animals (
name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES('Charmander', DATE '2020-02-08',0,false,11),('Plantmon',DATE '2021-11-15',2, TRUE, 5.7),('Squirtle', DATE '1993-02-04',3,FALSE,12.13),('Angemon',DATE '2003-06-12',1,TRUE,45),('Boarmon',DATE '2005-06-07',7,TRUE,20.4),('Blossom',DATE '1998-10-13',3,TRUE,17),('Ditto', DATE '2022-05-14',4,TRUE,22);

-- insert values into owners
INSERT INTO owners (full_name,age)
VALUES ('Sam Smith', 34), ('Jennifer Orwell', 19),('Bob', 45),('Melody Pond', 77), ('Dean Winchester', 14), ('Jodie Whittaker', 38);

-- insert into species
INSERT INTO species (name) VALUES('Pokemon'), ('Digimon');

UPDATE animals SET species_id =1 WHERE name LIKE '%mon';
UPDATE animals SET species_id =2 WHERE species_id IS NULL;


-- owner id to animals tbl
UPDATE animals SET owner_id =1 WHERE name='Augumon';
UPDATE animals SET owner_id =2 WHERE name='Gabumon' OR name='Pikachu';
UPDATE animals SET owner_id =3 WHERE name='Devimon' OR name='Plantmon';
UPDATE animals SET owner_id = 4 WHERE name='Charmander' OR name='Blossom'OR name='Squirtle';
UPDATE animals SET owner_id =5 WHERE name='Angemon' OR  name='Boarmon';

-- joining table
INSERT INTO vets (name, age, date_0f_graduation)
VALUES ('William Tatcher',45, '2000-04-23'),
		('Maisy Smith', 26, '2019-01-17'),
		('Stephanie Mendez', 64, '1981-05-04'),
		('Jack Harkness', 38, '2008-01-08'

     
INSERT INTO specialization (species_id, vet_id)
SELECT s.species_id, v.id
FROM species s, vets v
WHERE s.species_name = 'Pokemon' AND v.name = 'William Tatcher';

INSERT INTO specialization (species_id, vet_id)
SELECT s.species_id, v.id
FROM species s, vets v
WHERE (s.species_name = 'Digimon' OR s.species_name = 'Pokemon') AND v.name = 'Stephanie Mendez';
     
INSERT INTO specialization (species_id, vet_id)
SELECT s.species_id, v.id
FROM species s, vets v
WHERE s.species_name = 'Digimon' AND v.name = 'Jack Harkness';
     
     INSERT INTO visits (animal_id, vet_id, visit_date)
SELECT a.id, v.id, '2020-05-24'
FROM animals a, vets v
WHERE a.name = 'Agumon' AND v.name = 'William Tatcher';

INSERT INTO visits (animal_id, vet_id, visit_date)
SELECT a.id, v.id, '2020-07-22'
FROM animals a, vets v
WHERE a.name = 'Agumon' AND v.name = 'Stephanie Mendez';

INSERT INTO visits (animal_id, vet_id, visit_date)
SELECT a.id, v.id, '2021-02-02'
FROM animals a, vets v
WHERE a.name = 'Gabumon' AND v.name = 'Jack Harkness';

INSERT INTO visits (animal_id, vet_id, visit_date)
SELECT a.id, v.id, '2020-01-05'
FROM animals a, vets v
WHERE a.name = 'Pikachu' AND v.name = 'Maisy Smith';

INSERT INTO visits (animal_id, vet_id, visit_date)
SELECT a.id, v.id, '2020-03-08'
FROM animals a, vets v
WHERE a.name = 'Pikachu' AND v.name = 'Maisy Smith';

INSERT INTO visits (animal_id, vet_id, visit_date)
SELECT a.id, v.id, '2020-05-14'
FROM animals a, vets v
WHERE a.name = 'Pikachu' AND v.name = 'Maisy Smith';

INSERT INTO visits (animal_id, vet_id, visit_date)
SELECT a.id, v.id, '2021-05-04'
FROM animals a, vets v
WHERE a.name = 'Devimon' AND v.name = 'Stephanie Mendez';

		 
INSERT INTO visits (animal_id, vet_id, visit_date)
SELECT a.id, v.id, '2021-12-21'
FROM animals a, vets v
WHERE a.name = 'Plantmon' AND v.name = 'Maisy Smith';

INSERT INTO visits (animal_id, vet_id, visit_date)
SELECT a.id, v.id, '2021-02-24'
FROM animals a, vets v
WHERE a.name = 'Charmander' AND v.name = 'Jack Harkness';


INSERT INTO visits (animal_id, vet_id, visit_date)
SELECT a.id, v.id, '2020-08-10'
FROM animals a, vets v
WHERE a.name = 'Plantmon' AND v.name = 'William Tatcher';

INSERT INTO visits (animal_id, vet_id, visit_date)
SELECT a.id, v.id, '2021-04-07'
FROM animals a, vets v
WHERE a.name = 'Plantmon' AND v.name = 'William Tatcher';

INSERT INTO visits (animal_id, vet_id, visit_date)
SELECT a.id, v.id, '2019-09-29'
FROM animals a, vets v
WHERE a.name = 'Squirtle' AND v.name = 'Stephanie Mendez';


INSERT INTO visits (animal_id, vet_id, visit_date)
SELECT a.id, v.id, '2020-10-03'
FROM animals a, vets v
WHERE a.name = 'Angemon' AND v.name = 'Jack Harkness';

INSERT INTO visits (animal_id, vet_id, visit_date)
SELECT a.id, v.id, '2020-11-04'
FROM animals a, vets v
WHERE a.name = 'Angemon' AND v.name = 'Jack Harkness';

INSERT INTO visits (animal_id, vet_id, visit_date)
SELECT a.id, v.id, '2019-01-24'
FROM animals a, vets v
WHERE a.name = 'Boarmon' AND v.name = 'Maisy Smith';

INSERT INTO visits (animal_id, vet_id, visit_date)
SELECT a.id, v.id, '2019-05-15'
FROM animals a, vets v
WHERE a.name = 'Boarmon' AND v.name = 'Maisy Smith';

INSERT INTO visits (animal_id, vet_id, visit_date)
SELECT a.id, v.id, '2020-02-27'
FROM animals a, vets v
WHERE a.name = 'Boarmon' AND v.name = 'Maisy Smith';

INSERT INTO visits (animal_id, vet_id, visit_date)
SELECT a.id, v.id, '2020-08-03'
FROM animals a, vets v
WHERE a.name = 'Boarmon' AND v.name = 'Maisy Smith';

INSERT INTO visits (animal_id, vet_id, visit_date)
SELECT a.id, v.id, '2020-05-24'
FROM animals a, vets v
WHERE a.name = 'Blossom' AND v.name = 'Stephanie Mendez';

INSERT INTO visits (animal_id, vet_id, visit_date)
SELECT a.id, v.id, '2021-01-11'
FROM animals a, vets v
WHERE a.name = 'Blossom' AND v.name = 'William Tatcher';

--====================================================================================
-- Performance
INSERT INTO animals (name) VALUES ('Agumon'), ('Gabumon'), ('Pikachu'), ('Devimon'), ('Charmander'), ('Plantmon'), ('Squirtle'), ('Angemon'), ('Boarmon'), ('Blossom');

INSERT INTO vets (name) VALUES ('William Tatcher'), ('Maisy Smith'), ('Stephanie Mendez'), ('Jack Harkness');
		 
-- This will add 3.594.280 visits considering you have 10 animals, 4 vets, and it will use around ~87.000 timestamps (~4min approx.)
INSERT INTO visits (animal_id, vet_id, date_of_visit) SELECT * FROM (SELECT id FROM animals) animal_ids, (SELECT id FROM vets) vets_ids, generate_series('1980-01-01'::timestamp, '2021-01-01', '4 hours') visit_timestamp;

-- This will add 2.500.000 owners with full_name = 'Owner <X>' and email = 'owner_<X>@email.com' (~2min approx.)
insert into owners (full_name, email) select 'Owner ' || generate_series(1,2500000), 'owner_' || generate_series(1,2500000) || '@mail.com';

-- Creating an INDEX
CREATE INDEX visits(animal_vet_id_idx) ON visits(animal_id, vet_id);
CREATE INDEX email_idx ON owners(email);

		 
		 
