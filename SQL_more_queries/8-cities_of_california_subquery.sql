-- Use the database hbtn_0d_usa
USE hbtn_0d_usa;

-- List all cities of California sorted by cities.id
SELECT *
FROM cities
WHERE state_id = (SELECT id FROM states WHERE name = 'California')
ORDER BY id ASC;
