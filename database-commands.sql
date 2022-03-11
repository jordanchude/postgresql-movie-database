-- Part One - Creating Tables
CREATE TABLE films (
	name TEXT,
  release_year INTEGER
);

-- Part Two - Inserting Data
INSERT INTO films (name, release_year)
VALUES 
  ('The Truman Show', 1998),
  ('The Matrix', 1999),
  ('The Shawshank Redemption', 1994);

-- Part Three - Querying Data
SELECT * FROM films 
WHERE release_year = 1994;

-- Part Four - Adding Supplementary Information
ALTER TABLE films 
ADD runtime INTEGER;

ALTER TABLE films 
ADD category TEXT;

ALTER TABLE films 
ADD rating DECIMAL(2,1);