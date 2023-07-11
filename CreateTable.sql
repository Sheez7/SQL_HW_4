create table Genre (
    genre_id INTEGER PRIMARY KEY,
    title VARCHAR(40) NOT NULL
);

create table Musician (
    musician_id INTEGER PRIMARY KEY,
    name VARCHAR(120) NOT NULL
);

create table Musician_Genre (
    genre_id INTEGER REFERENCES Genre (genre_id),
    musician_id INTEGER REFERENCES Musician (musician_id),
    PRIMARY KEY (genre_id, musician_id)
);

create table Album (
    album_id INTEGER PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    release_year date NOT NULL
);

create table Album_Musician (
    musician_id INTEGER REFERENCES Musician (musician_id),
    album_id INTEGER REFERENCES Album (album_id),
    PRIMARY KEY (musician_id, album_id)
);

create table Track (
    track_id INTEGER PRIMARY KEY,
    title VARCHAR(120) NOT NULL,
    duration INTEGER NOT null,
    album_id INTEGER NOT NULL references Album
);

create table IF NOT EXISTS Collection (
    collection_id INTEGER PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    release_year date NOT NULL
);

create table Collection_Track (
    track_id INTEGER REFERENCES Track (track_id),
    collection_id INTEGER REFERENCES Collection (collection_id),
    PRIMARY KEY (track_id, collection_id)
);