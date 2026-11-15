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

CREATE TABLE IF NOT EXISTS Autor (
    autor_id INTEGER,
    vorname VARCHAR(30),
    nachname VARCHAR(50),

    PRIMARY KEY (autor_id)
);

CREATE TABLE IF NOT EXISTS Buch_Autor (
    buch_id INTEGER,
    autor_id INTEGER,

    PRIMARY KEY (buch_id, autor_id)
);





-- FREMDSCHLÜSSELVERGABE --
ALTER TABLE Buch DROP CONSTRAINT IF EXISTS fk_buch_verlag;
ALTER TABLE Buch ADD CONSTRAINT fk_buch_verlag 
    FOREIGN KEY (verlag_id) REFERENCES Verlag (verlag_id)
    ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE Buch DROP CONSTRAINT IF EXISTS fk_buch_genre;
ALTER TABLE Buch ADD CONSTRAINT fk_buch_genre
    FOREIGN KEY (genre_id) REFERENCES Genre (genre_id)
    ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE Buch DROP CONSTRAINT IF EXISTS fk_buch_sprache;
ALTER TABLE Buch ADD CONSTRAINT fk_buch_sprache
    FOREIGN KEY (sprache_id) REFERENCES Sprache (sprache_id)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Buch_Autor DROP CONSTRAINT IF EXISTS fk_buchAutor_buch;
ALTER TABLE Buch_Autor ADD CONSTRAINT fk_buchAutor_buch
    FOREIGN KEY (buch_id) REFERENCES Buch (buch_id);
ALTER TABLE Buch_Autor DROP CONSTRAINT IF EXISTS fk_buchAutor_autor;
ALTER TABLE Buch_Autor ADD CONSTRAINT fk_buchAutor_autor
    FOREIGN KEY (autor_id) REFERENCES Autor (autor_id);