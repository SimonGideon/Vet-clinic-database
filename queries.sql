/*Queries that provide answers to the questions from all projects.*/

SELECT name, date_of_birth, escape_attempts, neutered, weight_kg FROM animals WHERE name LIKE '%mon';
SELECT name, date_of_birth, escape_attempts, neutered, weight_kg  FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';
SELECT name, date_of_birth, escape_attempts, neutered, weight_kg FROM animals WHERE neutered IS true AND escape_attempts<3;
SELECT  date_of_birth from animals WHERE name = 'Agumon' OR name='PikachU';
SELECT name, escape_attempts FROM animals WHERE weight_kg>10.5;
SELECT * FROM animals WHERE neutered=true;
SELECT * FROM animals WHERE NOT name='Gabumon';
SELECT * FROM animals WHERE weight_kg>=10.4 AND weight_kg<=17.3;

