create table Genres (
    genre_id INTEGER PRIMARY KEY,
    title VARCHAR(40) NOT NULL
);

create table Musicians (
    musician_id INTEGER PRIMARY KEY,
    name VARCHAR(120) NOT NULL
);

create table Musicians_Genres (
    genre_id INTEGER REFERENCES Genres (genre_id),
    musician_id INTEGER REFERENCES Musicians (musician_id),
    PRIMARY KEY (genre_id, musician_id)
);

create table Albums (
    album_id INTEGER PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    release_year date NOT NULL
);

create table Albums_Musicians (
    musician_id INTEGER REFERENCES Musicians (musician_id),
    album_id INTEGER REFERENCES Albums (album_id),
    PRIMARY KEY (musician_id, album_id)
);

create table Tracks (
    track_id INTEGER PRIMARY KEY,
    title VARCHAR(120) NOT NULL,
    duration INTEGER NOT null,
    album_id INTEGER NOT NULL references Albums
);

create table IF NOT EXISTS Collections (
    collection_id INTEGER PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    release_year date NOT NULL
);

create table Collections_Tracks (
    track_id INTEGER REFERENCES Tracks (track_id),
    collection_id INTEGER REFERENCES Collection (collection_id),
    PRIMARY KEY (track_id, collection_id)
);