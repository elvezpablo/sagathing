
-- id 1
INSERT INTO characters (name, generation) VALUES ("Ufieg", "FIRST");
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
-- id 2
INSERT INTO characters (name, generation) VALUES ("A Woman of the uplands", "FIRST");
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());

INSERT INTO relationships (saga_id, type, character_a, character_b) 
VALUES (15, "SPOUSE", 1, 2);

INSERT INTO events (saga_id, subject_id, type) 
VALUES (15, last_insert_rowid(), "MARRIAGE");

-- id 3
INSERT INTO characters (name, generation) VALUES ("Asa", "SECOND");
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
-- id 4
INSERT INTO characters (name, generation) VALUES ("Onund Treefoot", "SECOND");
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());

INSERT INTO relationships (saga_id, type, character_a, character_b, ordinal) 
VALUES (15, "SPOUSE", 3, 4, 1);

INSERT INTO events (saga_id, subject_id, type) 
VALUES (15, last_insert_rowid(), "MARRIAGE");

-- id 5
INSERT INTO characters (name, generation) VALUES ("Thordis", "SECOND"); 
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());

INSERT INTO relationships (saga_id, type, character_a, character_b, ordinal) 
VALUES (15, "SPOUSE", 4, 5, 1);

INSERT INTO events (saga_id, subject_id, type) 
VALUES (15, last_insert_rowid(), "MARRIAGE");
-- id 6
INSERT INTO characters (name) VALUES ("Audun Skokull");
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());

INSERT INTO relationships (saga_id, type, character_a, character_b, ordinal) 
VALUES (15, "SPOUSE", 5, 6, 1);

INSERT INTO events (saga_id, subject_id, type) 
VALUES (15, last_insert_rowid(), "MARRIAGE");

INSERT INTO characters (name) VALUES ("Gudbiorg");
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
INSERT INTO characters (name) VALUES ("Thorgeir");
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
INSERT INTO characters (name) VALUES ("Ufeig Grettir");
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
INSERT INTO characters (name) VALUES ("Thorgrin Grizzlepate");
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
INSERT INTO characters (name) VALUES ("Thordis");
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
INSERT INTO characters (name) VALUES ("Asgeir Madpate");
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
INSERT INTO characters (name) VALUES ("Gudbrand");
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
INSERT INTO characters (name) VALUES ("Rannveig");
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
INSERT INTO characters (name) VALUES ("Asmund the Grey");
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
INSERT INTO characters (name) VALUES ("Asdis");
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
INSERT INTO characters (name) VALUES ("Thorkell");
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
INSERT INTO characters (name) VALUES ("Thurid");
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
INSERT INTO characters (name) VALUES ("Audun of Willowdale");
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
INSERT INTO characters (name) VALUES ("Asta");
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
INSERT INTO characters (name) VALUES ("Thorstein Dromond");
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
INSERT INTO characters (name) VALUES ("Atli");
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
INSERT INTO characters (name) VALUES ("Grettir the Outlaw");
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
INSERT INTO characters (name) VALUES ("Illugi");
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
INSERT INTO characters (name) VALUES ("Thordis");
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
INSERT INTO characters (name) VALUES ("Rannveig");
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
INSERT INTO characters (name) VALUES ("Thorstein Kuggson");
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
INSERT INTO characters (name) VALUES ("Asgeir Madpate");
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
INSERT INTO characters (name) VALUES ("King Olaf");
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
INSERT INTO characters (name) VALUES ("Audun the Younger");
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());