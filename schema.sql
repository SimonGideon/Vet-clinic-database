/* Database schema to keep the structure of entire database. */

CREATE TABLE  animals(
id INT,
name VARCHAR(50),
date_of_birth DATE,
escape_attempts INT,
neutered bool,
weight_kg decimal);

ALTER TABLE animals
ADD species VARCHAR(50);

-- Foreign Key
-- create owners table
CREATE TABLE owners(
   id SERIAL PRIMARY KEY,
   full_name VARCHAR(50) NOT NULL, age INT NOT NULL
);


-- create species table
CREATE TABLE species (
  id SERIAL PRIMARY KEY, 
  name VARCHAR(50) NOT NULL
);

-- delete species table
ALTER TABLE animals
DROP COLUMN species;

-- add sepcies i column
ALTER TABLE animals ADD species_id INT;

-- add owner id column
ALTER TABLE animals ADD owner_id INT;

-- make species_id foreign key with reference from species tbl
ALTER TABLE animals ADD FOREIGN KEY (species_id) REFERENCES species(id);

-- make owners_id foreign key with refrence from owners tbl
ALTER TABLE animals ADD FOREIGN KEY (owner_id) REFERENCES owner(id);

-- join table
CREATE TABLE vets (id SERIAL PRIMARY KEY,
name VARCHAR(50) NOT NULL,
age INT NOT NULL,
date_of_registration date NOT NULL);

CREATE TABLE
vet_clinic=# CREATE TABLE specialization (
species_id INT REFERENCES species(species_id),
vet_id INT REFERENCES vets(id),
PRIMARY KEY (species_id, vet_id)
);







