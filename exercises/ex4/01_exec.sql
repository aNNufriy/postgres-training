SELECT people.*, count(toys.id) toy_count
FROM people 
LEFT JOIN toys ON people.id=toys.people_id
GROUP BY people.id;
