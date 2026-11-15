-- TABELLENDEFINITIONEN --
CREATE TABLE IF NOT EXISTS Buch (
    buch_id INTEGER,
    genre_id INTEGER,
    verlag_id INTEGER,
    sprache_id INTEGER,
    titel VARCHAR(255),
    erscheinungsjahr DATE,
    isbn VARCHAR(17),

    PRIMARY KEY (buch_id)
);

CREATE TABLE IF NOT EXISTS Verlag (
    verlag_id INTEGER,
    verlagsname VARCHAR(255),
    sitz VARCHAR(255),

    PRIMARY KEY (verlag_id)
);

CREATE TABLE IF NOT EXISTS Genre (
    genre_id INTEGER,
    name VARCHAR(64),

    PRIMARY KEY (genre_id)
);

CREATE TABLE IF NOT EXISTS Sprache (
    sprache_id INTEGER,
    bezeichnung VARCHAR(30),
    sprachcode VARCHAR(3),

    PRIMARY KEY (sprache_id),
    UNIQUE (sprachcode)
);






-- FREMDSCHLÜSSELVERGABE --
ALTER TABLE Buch
ADD CONSTRAINT fk_buch_verlag FOREIGN KEY (verlag_id) REFERENCES Verlag (verlag_id),
ADD CONSTRAINT fk_buch_genre FOREIGN KEY (genre_id) REFERENCES Genre (genre_id),
ADD CONSTRAINT fk_buch_sprache FOREIGN KEY (sprache_id) REFERENCES Sprache (sprache_id);