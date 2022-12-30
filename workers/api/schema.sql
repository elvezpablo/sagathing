
/*
Core saga table with slug for urls
*/
DROP TABLE IF EXISTS sagas;
CREATE TABLE sagas (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name TEXT NOT NULL,
	slug TEXT NOT NUll
);
INSERT INTO sagas (name, slug) VALUES ('Bandamanna saga', 'bandamanna');
INSERT INTO sagas (name, slug) VALUES ('The Saga of Bard Snæfells-God', 'bard-snaefells-god');
INSERT INTO sagas (name, slug) VALUES ('The Saga of Bjorn, Champion of the Hitardal People','bjorn-champion-of-the-hitardal-people');
INSERT INTO sagas (name, slug) VALUES ('Njal''s Saga', 'njal');
INSERT INTO sagas (name, slug) VALUES ('The Saga of Droplaug''s Sons', 'droplaugs-sons');
INSERT INTO sagas (name, slug) VALUES ('Egil''s Saga', 'egils');
INSERT INTO sagas (name, slug) VALUES ('Eirik the Red''s Saga', 'eirik-the-red');
INSERT INTO sagas (name, slug) VALUES ('The Saga of the People of Eyri', 'people-of-eyri');
INSERT INTO sagas (name, slug) VALUES ('The Saga of Finnbogi the Mighty', 'finnbogi-the-mighty');
INSERT INTO sagas (name, slug) VALUES ('The Saga of the People of Fljotsdal', 'people-of-fljotsdal');
INSERT INTO sagas (name, slug) VALUES ('The Saga of the People of Floi', 'people-of-floi');
INSERT INTO sagas (name, slug) VALUES ('The Saga of the Sworn Brothers', 'sworn-brothers');
INSERT INTO sagas (name, slug) VALUES ('Gisli Sursson''s Saga', 'gisli-sursson');
INSERT INTO sagas (name, slug) VALUES ('The Saga of the Greenlanders', 'greenlanders');
INSERT INTO sagas (name, slug) VALUES ('The Saga of Grettir the Strong', 'grettir-the-strong');
INSERT INTO sagas (name, slug) VALUES ('Gold-Thorir''s Saga', 'gold-thorir');
INSERT INTO sagas (name, slug) VALUES ('The Saga of Gunnar, the Fool of Keldugnup', 'gunnar-the-fool-of-keldugnup');
INSERT INTO sagas (name, slug) VALUES ('The Saga of Gunnlaug Serpent-Tongu', 'gunnlaug-serpent-tongue');
INSERT INTO sagas (name, slug) VALUES ('Hen-Thorir''s Saga', 'hen-thorir');
INSERT INTO sagas (name, slug) VALUES ('The Saga of Hallfred the Troublesome Poet', 'hallfred-the-troublesome-poet');
INSERT INTO sagas (name, slug) VALUES ('The Saga of Hord and the People of Holm', 'hord-and-the-people-of-holm');
INSERT INTO sagas (name, slug) VALUES ('The Saga of Havard of Isafjord', 'havard-of-isafjord');
INSERT INTO sagas (name, slug) VALUES ('The Saga of the Slayings on the Heath', 'slayings-on-the-heath');
INSERT INTO sagas (name, slug) VALUES ('The Saga of Hrafnkel Frey''s Godi', 'hrafnkel-freys-godi');
INSERT INTO sagas (name, slug) VALUES ('The Saga of the People of Kjalarnes', 'people-of-kjalarnes');
INSERT INTO sagas (name, slug) VALUES ('Kormak''s Saga', 'kormik');
INSERT INTO sagas (name, slug) VALUES ('The Saga of Ref the Sly', 'ref-the-sly');
INSERT INTO sagas (name, slug) VALUES ('The Saga of the People of Laxardal', 'people-of-laxardal');
INSERT INTO sagas (name, slug) VALUES ('The Saga of the People of Ljosavatn', 'people-of-ljosavatn');
INSERT INTO sagas (name, slug) VALUES ('Olkofri''s Saga', 'olkofri');
INSERT INTO sagas (name, slug) VALUES ('The Saga of the People of Reykjadal and of Killer-Skuta','people-of-reykjadal-and-of-killer-skuta');
INSERT INTO sagas (name, slug) VALUES ('The Saga of the People of Svarfadardal', 'people-of-svarfadardal');
INSERT INTO sagas (name, slug) VALUES ('The Saga of Thord Menace', 'thord-menace');
INSERT INTO sagas (name, slug) VALUES ('The Saga of Thorstein the White', 'thorstein-the-white');
INSERT INTO sagas (name, slug) VALUES ('Thorstein Sidu-Hallsson''s Saga', 'thorstein-sidu-hallsson');
INSERT INTO sagas (name, slug) VALUES ('Valla-Ljot''s Saga', 'valla-ljot');
INSERT INTO sagas (name, slug) VALUES ('The Saga of the People of Vatnsdal', 'people-of-vatnsdal');
INSERT INTO sagas (name, slug) VALUES ('Killer-Glum''s Saga', 'killer-glum');
INSERT INTO sagas (name, slug) VALUES ('Viglund''s Saga', 'viglund');
INSERT INTO sagas (name, slug) VALUES ('The Saga of the People of Vopnafjord', 'people-of-vopnafjord');

/*
Join table to associate sagas with characters
*/
DROP TABLE IF EXISTS sagas_characters;
CREATE TABLE IF NOT EXISTS sagas_characters (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	saga_id INTEGER NOT NULL,
	character_id INTEGER NOT NULL
);

/*
Table of character information
- name is the common english name, names table will be used for other types of names
- tags is a json array of string tags to arbitrarily group characters
*/
DROP TABLE IF EXISTS characters;
CREATE TABLE IF NOT EXISTS characters (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name TEXT NOT NULL,
	tags TEXT
);

DROP TABLE IF EXISTS tags;
CREATE TABLE IF NOT EXISTS tags (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	tag TEXT NOT NULL 
);

INSERT INTO tags (tag)
VALUES
	('FIRST'),
	('SECOND'),
	('THIRD');

/*
 join table for all the names and nicknames per saga
*/
DROP TABLE IF EXISTS names;
CREATE TABLE IF NOT EXISTS names (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	type TEXT NOT NULL,
	character_id INTEGER NOT NULL,
	saga_id INTEGER NOT NULL
);
/*
 relationship of 2 characters per saga this will usually 
 be for a husband-wife and parent-child but could also be owner-pet
 - ordinal the order of a relationship e.g. 1st husband, 1st child
 - type of relationship e.g. CHILD, OWNER, PARENT
 - character_a  must be the subject of the type 
 if CHILD type then this should be the id of the child
 if PARENT type then this should be the id of the parent
 if SPOUSE type then order does not matter
 - character_b
*/
DROP TABLE IF EXISTS relationships;
CREATE TABLE IF NOT EXISTS relationships (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	saga_id INTEGER NOT NULL,
	type TEXT NOT NULL,
	ordinal INTEGER DEFAULT 0 NOT NULL,
	character_a INTEGER NOT NULL,
	character_b INTEGER NOT NULL
);

DROP TABLE IF EXISTS relationship_types;
CREATE TABLE IF NOT EXISTS relationship_types (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	type TEXT NOT NULL
);

INSERT INTO relationship_types (type)
VALUES
	('CHILD'),
	('FOSTER_CHILD'),
	('FOSTER_PARENT'),
	('FOSTER_SIBLIING'),
	('OWNER'),
	('PARENT'),
	('PET'),	
	('SPOUSE');

/*
- subject_id can be a relationshp or character
- type string the type of relationship e.g. 'MARRIAGE'
- ordinal the order in the saga 
*/
DROP TABLE IF EXISTS events;
CREATE TABLE IF NOT EXISTS events (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	saga_id INTEGER NOT NULL,
	subject_id INTEGER NOT NULL, 
	type TEXT NOT NULL,
	ordinal INTEGER,
	data TEXT
); 

DROP TABLE IF EXISTS event_types;
CREATE TABLE IF NOT EXISTS event_types (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	type TEXT NOT NULL
);

INSERT INTO event_types (type) 
VALUES 
	('MARRIAGE'),
	('DIVORCE'),
	('BIRTH'),
	('DEATH'),
	('FOSTER');


-- id 1
INSERT INTO characters (name) VALUES ('Ufieg');
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
-- id 2
INSERT INTO characters (name) VALUES ('A Woman of the uplands');
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());

INSERT INTO relationships (saga_id, type, character_a, character_b) 
VALUES (15, 'SPOUSE', 1, 2);

INSERT INTO events (saga_id, subject_id, type) 
VALUES (15, last_insert_rowid(), 'MARRIAGE');

-- id 3
INSERT INTO characters (name) VALUES ('Asa');
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
-- id 4
INSERT INTO characters (name) VALUES ('Onund Treefoot');
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());

INSERT INTO relationships (saga_id, type, character_a, character_b, ordinal) 
VALUES (15, 'SPOUSE', 3, 4, 1);

INSERT INTO events (saga_id, subject_id, type) 
VALUES (15, last_insert_rowid(), 'MARRIAGE');

-- id 5
INSERT INTO characters (name) VALUES ('Thordis'); 
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());

INSERT INTO relationships (saga_id, type, character_a, character_b, ordinal) 
VALUES (15, 'SPOUSE', 4, 5, 1);

INSERT INTO events (saga_id, subject_id, type) 
VALUES (15, last_insert_rowid(), 'MARRIAGE');
-- id 6
INSERT INTO characters (name) VALUES ('Audun Skokull');
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());

INSERT INTO relationships (saga_id, type, character_a, character_b, ordinal) 
VALUES (15, 'SPOUSE', 5, 6, 1);

INSERT INTO events (saga_id, subject_id, type) 
VALUES (15, last_insert_rowid(), 'MARRIAGE');
-- id 7
INSERT INTO characters (name) VALUES ('Gudbiorg');
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
-- id 8
INSERT INTO characters (name) VALUES ('Thorgeir');
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
-- id 9
INSERT INTO characters (name) VALUES ('Ufeig Grettir');
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
-- id 10
INSERT INTO characters (name) VALUES ('Thorgrin Grizzlepate');
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
-- id 11
INSERT INTO characters (name) VALUES ('Thordis');
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
-- id 12
INSERT INTO characters (name) VALUES ('Asgeir Madpate');
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
-- id 13
INSERT INTO characters (name) VALUES ('Gudbrand');
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
-- id 14
INSERT INTO characters (name) VALUES ('Rannveig');
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
-- id 15
INSERT INTO characters (name) VALUES ('Asmund the Grey');
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
-- id 16
INSERT INTO characters (name) VALUES ('Asdis');
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
-- id 17
INSERT INTO characters (name) VALUES ('Thorkell');
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
-- id 18
INSERT INTO characters (name) VALUES ('Thurid');
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
-- id 19
INSERT INTO characters (name) VALUES ('Audun of Willowdale');
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
-- id 20
INSERT INTO characters (name) VALUES ('Asta');
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
-- id 21
INSERT INTO characters (name) VALUES ('Thorstein Dromond');
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
-- id 22
INSERT INTO characters (name) VALUES ('Atli');
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
-- id 23
INSERT INTO characters (name) VALUES ('Grettir the Outlaw');
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
-- id 24
INSERT INTO characters (name) VALUES ('Illugi');
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
-- id 25
INSERT INTO characters (name) VALUES ('Thordis');
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
-- id 26
INSERT INTO characters (name) VALUES ('Rannveig');
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
-- id 27
INSERT INTO characters (name) VALUES ('Thorstein Kuggson');
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
-- id 28
INSERT INTO characters (name) VALUES ('Asgeir Madpate');
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
-- id 29
INSERT INTO characters (name) VALUES ('King Olaf');
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());
-- id 30
INSERT INTO characters (name) VALUES ('Audun the Younger');
INSERT INTO sagas_characters (saga_id, character_id) VALUES (15, last_insert_rowid());