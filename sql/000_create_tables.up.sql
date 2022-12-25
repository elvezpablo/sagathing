
DROP TABLE IF EXISTS sagas;
CREATE TABLE IF NOT EXISTS sagas (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name TEXT NOT NULL,
);

INSERT INTO sagas (name) 
VALUES
	("Bandamanna saga"),
	("The Saga of Bard Snæfells-God"),
	("The Saga of Bjorn, Champion of the Hitardal People"),
	("Njal's Saga"),
	("The Saga of Droplaug's Sons"),
	("Egil's Saga"),
	("Eirik the Red's Saga"),
	("The Saga of the People of Eyri"),
	("The Saga of Finnbogi the Mighty"),
	("The Saga of the People of Fljotsdal"),
	("The Saga of the People of Floi"),
	("The Saga of the Sworn Brothers"),
	("Gisli Sursson's Saga"),
	("The Saga of the Greenlanders"),
	("The Saga of Grettir the Strong"),
	("Gold-Thorir's Saga"),
	("The Saga of Gunnar, the Fool of Keldugnup"),
	("The Saga of Gunnlaug Serpent-Tongu"),
	("Hen-Thorir's Saga"),
	("The Saga of Hallfred the Troublesome Poet "),
	("The Saga of Hord and the People of Holm"),
	("The Saga of Havard of Isafjord"),
	("The Saga of the Slayings on the Heath"),
	("The Saga of Hrafnkel Frey's Godi"),
	("The Saga of the People of Kjalarnes"),
	("Kormak's Saga"),
	("The Saga of Ref the Sly"),
	("The Saga of the People of Laxardal"),
	("The Saga of the People of Ljosavatn"),
	("Olkofri's Saga"),
	("The Saga of the People of Reykjadal and of Killer-Skuta"),
	("The Saga of the People of Svarfadardal"),
	("The Saga of Thord Menace"),
	("The Saga of Thorstein the White"),
	("Thorstein Sidu-Hallsson's Saga"),
	("Valla-Ljot's Saga"),
	("The Saga of the People of Vatnsdal  "),
	("Killer-Glum's Saga"),
	("Viglund's Saga"),
	("The Saga of the People of Vopnafjord");

DROP TABLE IF EXISTS characters;
CREATE TABLE IF NOT EXISTS characters (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	saga_id INTEGER NOT NULL,
	name TEXT NOT NULL,
	events TEXT 
);

DROP TABLE IF EXISTS names;
CREATE TABLE IF NOT EXISTS names (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	character_id INTEGER NOT NULL,
	saga_id INTEGER NOT NULL,	
);

DROP TABLE IF EXISTS relationships;
CREATE TABLE IF NOT EXISTS relationships (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	type TEXT NOT NULL,
	event TEXT NOT NULL,	
	character_a INTEGER NOT NULL,
	character_b INTEGER NOT NULL,
);

DROP TABLE IF EXISTS relationship_types;
CREATE TABLE IF NOT EXISTS relationship_types {
	type TEXT PRIMARY KEY
};

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
CREATE TABLE IF NOT EXISTS events {
	id INTERGER PRIMARY KEY AUTOINCREMENT,
	type TEXT NOT NULL,
	order INTEGER DEFAULT 0 NOT NULL,
	date TEXT
}; 

DROP TABLE IF EXISTS event_types;
CREATE TABLE IF NOT EXISTS event_types {
	type TEXT PRIMARY KEY
};

INSERT INTO event_types (type) 
VALUES 
	("MARRIAGE"),
	("DIVORCE"),
	("BIRTH"),
	("DEATH"),
	("FOSTER");

