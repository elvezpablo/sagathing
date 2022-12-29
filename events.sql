
SELECT s.name, e.type, r.ordinal, c1.name, c2.name
FROM  events as e
INNER JOIN sagas AS s 
ON s.id=e.saga_id
INNER JOIN relationships AS r 
ON e.subject_id=r.id
INNER JOIN characters AS c1
ON c1.id=r.character_a
INNER JOIN characters AS c2
ON c2.id=r.character_b;