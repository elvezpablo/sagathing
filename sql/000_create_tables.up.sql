
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
	ordinal INTEGER DEFAULT 1,
	date TEXT
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
