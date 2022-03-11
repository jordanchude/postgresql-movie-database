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

-- Part Five - Updating Data
UPDATE films
SET runtime = 103, 
		category = 'drama', 
    rating = 8.2, 
    box_office_earnings = 264000000
WHERE name = 'The Truman Show';

UPDATE films
SET runtime = 136, 
		category = 'action', 
    rating = 8.7, 
    box_office_earnings = 466000000
WHERE name = 'The Matrix';

UPDATE films
SET runtime = 142, 
		category = 'drama', 
    rating = 9.3, 
    box_office_earnings = 73000000
WHERE name = 'The Shawshank Redemption';

-- Part Six - Adding Constraints
ALTER TABLE films
ADD CONSTRAINT unique_name UNIQUE (name);