CREATE DATABASE Students;

USE Students
--make a table


CREATE TABLE celebs (
   id INTEGER, 
   name TEXT, 
   age INTEGER
);


--get all fields of table
SELECT * FROM celebs;

--get value from table
SELECT name FROM celebs;


--insert into table
INSERT INTO celebs (id, name, age) 
VALUES (1, 'Justin Bieber', 22);

INSERT INTO celebs (id, name, age) 
VALUES (2, 'Beyonce Knowles', 33); 
 
INSERT INTO celebs (id, name, age) 
VALUES (3, 'Jeremy Lin', 26); 
 
INSERT INTO celebs (id, name, age) 
VALUES (4, 'Taylor Swift', 26); 

SELECT * FROM celebs;


--add new column to table (original was ALTER TABLE celebs ADD COLUMN twitter_handle TEXT; )
ALTER TABLE celebs
ADD twitter_handle TEXT; 

SELECT * FROM celebs;


--Update rows in a rable
UPDATE celebs SET twitter_handle = '@taylorswift13' WHERE id=4;

SELECT * from celebs;


--Delete from table (removing null values)
DELETE FROM celebs 
WHERE twitter_handle IS NULL;
 
SELECT * FROM celebs; 



--Constraints for the table
CREATE TABLE awards (
   id INTEGER PRIMARY KEY,
   recipient TEXT NOT NULL,
   award_name TEXT DEFAULT 'Grammy'
);


--Select multiple columns
SELECT name, genre, year
FROM movies;

--Rename a column
SELECT name AS 'Titles'
FROM movies;

SELECT imdb_rating AS 'IMDb'
FROM movies;


--These select from might produce a bunch of duplicates, use DISTINCT to get only unique
SELECT DISTINCT genre
FROM movies;


--Filter results with WHERE clause
SELECT *
FROM movies
WHERE imdb_rating > 8; --can be any operator


--Use wildcards so you don't have to get exact matches
SELECT * 
FROM movies
WHERE name LIKE 'Se_en'; -- _ is a wildcard
WHERE name LIKE 'A%';-- the % sign is any after, or any before

--test for NULL values
SELECT name
FROM movies 
WHERE imdb_rating IS NOT NULL;

--get results within a range
SELECT *
FROM movies
WHERE year BETWEEN 1990 AND 1999;

SELECT *
FROM movies
WHERE name BETWEEN 'D' AND 'G'; --BETWEEN 'D' AND 'F' should not be the condition because it would return names that begin with ‘D’ and ‘E’, but not ‘F’ (unless there was a movie with the single letter name of “F”).

--AND clause
SELECT * 
FROM movies
WHERE year BETWEEN 1990 AND 1999
   AND genre = 'romance';

SELECT * 
FROM movies
WHERE year < 1985
   AND genre == 'horror';

--OR clause
SELECT *
FROM movies
WHERE genre = 'romance' OR
genre = 'comedy';

--Sort alphabet using ORDER BY
SELECT *
FROM movies
ORDER BY name;

SELECT *
FROM movies
WHERE imdb_rating > 8
ORDER BY year DESC;

SELECT name, year, imdb_rating
FROM movies
ORDER BY imdb_rating DESC;

--Limit number of returns for an SQL call
SELECT *
FROM movies
LIMIT 10;

--switch statements, CASE
SELECT name,
 CASE
  WHEN imdb_rating > 8 THEN 'Fantastic'
  WHEN imdb_rating > 6 THEN 'Poorly Received'
  ELSE 'Avoid at All Costs'
 END
FROM movies;

SELECT name,
 CASE
  WHEN genre = 'romance' THEN 'Chill'
  WHEN genre = 'comedy' THEN 'Chill'
  ELSE 'Intense'
 END AS 'Mood'
FROM movies;

--Let’s summarize:
--SELECT is the clause we use every time we want to query information from a database.
--AS renames a column or table.
--DISTINCT return unique values.
--WHERE is a popular command that lets you filter the results of the query based on conditions that you specify.
--LIKE and BETWEEN are special operators.
--AND and OR combines multiple conditions.
--ORDER BY sorts the result.
--LIMIT specifies the maximum number of rows that the query will return.
--CASE creates different outputs.



--https://www.codecademy.com/courses/learn-sql/lessons/aggregate-functions/exercises/intro