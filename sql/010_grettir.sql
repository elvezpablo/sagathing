

INSERT INTO characters (name) VALUES ("Ufieg");
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
INSERT INTO characters (name) VALUES ("A Woman of the uplands");
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());

INSERT INTO events (saga_id, type) 
VALUES (15, "MARRIAGE");

INSERT INTO relationships (saga_id, type, event_id, character_a, character_b) 
VALUES (15, "SPOUSE", last_insert_rowid(), 1, 2);

INSERT INTO characters (name) VALUES ("Asa");
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());

-- INSERT INTO events (saga_id, type) 
-- VALUES (15, "MARRIAGE");

-- INSERT INTO relationships (saga_id, type, event_id, character_a, character_b) 
-- VALUES (15, "SPOUSE", last_insert_rowid(), 1, 2);

INSERT INTO characters (name) VALUES ("Onund Treefoot");
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
INSERT INTO characters (name) VALUES ("Thordis");
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
INSERT INTO characters (name) VALUES ("Audun Skokull");
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
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