CREATE TABLE users (
	id       INTEGER NOT NULL PRIMARY KEY,
	name     VARCHAR NOT NULL
);

CREATE TABLE entries (
	id       INTEGER NOT NULL PRIMARY KEY,
	title    VARCHAR NOT NULL,
	uploader VARCHAR NOT NULL
);

CREATE TABLE tags (
	id       INTEGER NOT NULL PRIMARY KEY,
	name     VARCHAR NOT NULL UNIQUE ON CONFLICT IGNORE
);

CREATE TABLE tagmap (
	id       INTEGER NOT NULL PRIMARY KEY,
	tag_id   INTEGER NOT NULL,
	entry_id INTEGER NOT NULL,

	FOREIGN KEY(tag_id) REFERENCES tags(id),
	FOREIGN KEY(entry_id) REFERENCES entries(id)
);
