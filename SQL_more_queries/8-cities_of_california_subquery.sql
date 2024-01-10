-- Selects id and name columns from the cities table
SELECT id, name
FROM cities

-- Filters cities where the state_id matches the id of California in the states table
WHERE state_id = (
    -- Subquery to get the id of the state named 'California'
    SELECT id 
    FROM states 
    WHERE name = 'California'
)

-- Orders the results in ascending order by the id of the cities
ORDER BY id ASC;
