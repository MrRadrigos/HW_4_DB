CREATE TABLE Genre (
	id serial PRIMARY KEY,
	Genre_name VARCHAR(255)
);

CREATE TABLE Artist (
	id serial PRIMARY KEY,
	Artist_name VARCHAR(255)
);

CREATE TABLE Album (
	id serial PRIMARY KEY,
	Album_name VARCHAR(255),
	year INT 
);

CREATE TABLE Artist_album (
	id serial PRIMARY KEY,
	Artist_id INT,
	Album_id INT,
	FOREIGN KEY (album_id) REFERENCES Album (id),
	FOREIGN KEY (artist_id) REFERENCES Artist (id)
);

CREATE TABLE Artist_genre (
	id serial PRIMARY KEY,
	Genre_id int,
	Artist_id int,
	FOREIGN KEY (genre_id) REFERENCES Genre (id),
	FOREIGN KEY (artist_id)	REFERENCES Artist (id)
);

CREATE TABLE Track (
	id serial PRIMARY KEY,
	Track_name varchar(255),
	Track_lenght int,
	Album_id int,
	FOREIGN KEY (album_id) REFERENCES Album (id)
);

CREATE TABLE Collection (
	id serial PRIMARY KEY,
	Name varchar(255),
	Year int 
);

CREATE TABLE Collection_track (
	id serial PRIMARY KEY,
	Collection_id int,
	Track_id int,
	FOREIGN KEY (collection_id) REFERENCES Collection (id),
	FOREIGN KEY (track_id) REFERENCES Track (id)
);