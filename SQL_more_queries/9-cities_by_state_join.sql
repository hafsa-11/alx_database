-- Selects cities.id, cities.name, and states.name from cities and states tables
SELECT cities.id, cities.name, states.name
FROM cities, states

-- Filters records where cities.state_id matches states.id
WHERE cities.state_id = states.id

-- Orders the results in ascending order by cities.id
ORDER BY cities.id ASC;
