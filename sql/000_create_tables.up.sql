
DROP TABLE IF EXISTS sagas;
CREATE TABLE sagas (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name TEXT NOT NULL
);

INSERT INTO sagas (name) VALUES ("Bandamanna saga");
INSERT INTO sagas (name) VALUES ("The Saga of Bard Snæfells-God");
INSERT INTO sagas (name) VALUES ("The Saga of Bjorn, Champion of the Hitardal People");
INSERT INTO sagas (name) VALUES ("Njal's Saga");
INSERT INTO sagas (name) VALUES ("The Saga of Droplaug's Sons");
INSERT INTO sagas (name) VALUES ("Egil's Saga");
INSERT INTO sagas (name) VALUES ("Eirik the Red's Saga");
INSERT INTO sagas (name) VALUES ("The Saga of the People of Eyri");
INSERT INTO sagas (name) VALUES ("The Saga of Finnbogi the Mighty");
INSERT INTO sagas (name) VALUES ("The Saga of the People of Fljotsdal");
INSERT INTO sagas (name) VALUES ("The Saga of the People of Floi");
INSERT INTO sagas (name) VALUES ("The Saga of the Sworn Brothers");
INSERT INTO sagas (name) VALUES ("Gisli Sursson's Saga");
INSERT INTO sagas (name) VALUES ("The Saga of the Greenlanders");
INSERT INTO sagas (name) VALUES ("The Saga of Grettir the Strong");
INSERT INTO sagas (name) VALUES ("Gold-Thorir's Saga");
INSERT INTO sagas (name) VALUES ("The Saga of Gunnar\, the Fool of Keldugnup");
INSERT INTO sagas (name) VALUES ("The Saga of Gunnlaug Serpent-Tongu");
INSERT INTO sagas (name) VALUES ("Hen-Thorir's Saga");
INSERT INTO sagas (name) VALUES ("The Saga of Hallfred the Troublesome Poet ");
INSERT INTO sagas (name) VALUES ("The Saga of Hord and the People of Holm");
INSERT INTO sagas (name) VALUES ("The Saga of Havard of Isafjord");
INSERT INTO sagas (name) VALUES ("The Saga of the Slayings on the Heath");
INSERT INTO sagas (name) VALUES ("The Saga of Hrafnkel Frey's Godi");
INSERT INTO sagas (name) VALUES ("The Saga of the People of Kjalarnes");
INSERT INTO sagas (name) VALUES ("Kormak's Saga");
INSERT INTO sagas (name) VALUES ("The Saga of Ref the Sly");
INSERT INTO sagas (name) VALUES ("The Saga of the People of Laxardal");
INSERT INTO sagas (name) VALUES ("The Saga of the People of Ljosavatn");
INSERT INTO sagas (name) VALUES ("Olkofri's Saga");
INSERT INTO sagas (name) VALUES ("The Saga of the People of Reykjadal and of Killer-Skuta");
INSERT INTO sagas (name) VALUES ("The Saga of the People of Svarfadardal");
INSERT INTO sagas (name) VALUES ("The Saga of Thord Menace");
INSERT INTO sagas (name) VALUES ("The Saga of Thorstein the White");
INSERT INTO sagas (name) VALUES ("Thorstein Sidu-Hallsson's Saga");
INSERT INTO sagas (name) VALUES ("Valla-Ljot's Saga");
INSERT INTO sagas (name) VALUES ("The Saga of the People of Vatnsdal");
INSERT INTO sagas (name) VALUES ("Killer-Glum's Saga");
INSERT INTO sagas (name) VALUES ("Viglund's Saga");
INSERT INTO sagas (name) VALUES ("The Saga of the People of Vopnafjord");

DROP TABLE IF EXISTS sagas_characters;
CREATE TABLE IF NOT EXISTS sagas_characters (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	saga_id INTEGER NOT NULL,
	character_id INTEGER NOT NULL
);

DROP TABLE IF EXISTS characters;
CREATE TABLE IF NOT EXISTS characters (
	id INTEGER PRIMARY KEY AUTOINCREMENT,	
	name TEXT NOT NULL,
	events TEXT 
);

DROP TABLE IF EXISTS names;
CREATE TABLE IF NOT EXISTS names (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	type TEXT NOT NULL,
	character_id INTEGER NOT NULL,
	saga_id INTEGER NOT NULL
);

DROP TABLE IF EXISTS relationships;
CREATE TABLE IF NOT EXISTS relationships (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	type TEXT NOT NULL,
	event TEXT NOT NULL,	
	entity_a INTEGER NOT NULL,
	entity_b INTEGER NOT NULL
);

DROP TABLE IF EXISTS relationship_types;
CREATE TABLE IF NOT EXISTS relationship_types (
	type TEXT PRIMARY KEY
);

INSERT INTO relationship_types (type)
VALUES
	("CHILD"),
	("FOSTER_CHILD"),
	("FOSTER_PARENT"),
	("FOSTER_SIBLIING"),
	("OWNER"),
	("PARENT"),
	("PET"),
	("SIBLING"),
	("SPOUSE");

DROP TABLE IF EXISTS events;
CREATE TABLE IF NOT EXISTS events (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	type TEXT NOT NULL,
	ordinal INTEGER DEFAULT 0 NOT NULL,
	date TEXT
); 

DROP TABLE IF EXISTS event_types;
CREATE TABLE IF NOT EXISTS event_types (
	type TEXT PRIMARY KEY
);

INSERT INTO event_types (type) 
VALUES 
	("MARRIAGE"),
	("DIVORCE"),
	("BIRTH"),
	("DEATH"),
	("FOSTER");

