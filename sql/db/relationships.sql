SELECT r.type, c1.name, c2.name
FROM relationships AS r 
INNER JOIN sagas AS s 
ON s.id=r.saga_id
INNER JOIN characters AS c1
ON c1.id=r.character_a
INNER JOIN characters AS c2
ON c2.id=r.character_b;