-- TABELLENDEFINITIONEN --
CREATE TABLE IF NOT EXISTS Buch (
    buch_id INTEGER,
    genre_id INTEGER NOT NULL,
    verlag_id INTEGER NOT NULL,
    sprache_id INTEGER NOT NULL,
    titel VARCHAR(255) NOT NULL,
    erscheinungsjahr DATE,
    isbn VARCHAR(17) NOT NULL,

    PRIMARY KEY (buch_id)
);

CREATE TABLE IF NOT EXISTS Verlag (
    verlag_id INTEGER,
    verlagsname VARCHAR(255) NOT NULL,
    sitz VARCHAR(255) NOT NULL,

    PRIMARY KEY (verlag_id)
);

CREATE TABLE IF NOT EXISTS Genre (
    genre_id INTEGER,
    name VARCHAR(64) NOT NULL,

    PRIMARY KEY (genre_id)
);

CREATE TABLE IF NOT EXISTS Sprache (
    sprache_id INTEGER,
    bezeichnung VARCHAR(30) NOT NULL,
    sprachcode VARCHAR(3) NOT NULL,

    PRIMARY KEY (sprache_id),
    UNIQUE (sprachcode)
);

CREATE TABLE IF NOT EXISTS Autor (
    autor_id INTEGER,
    vorname VARCHAR(30) NOT NULL,
    nachname VARCHAR(50) NOT NULL,

    PRIMARY KEY (autor_id)
);

CREATE TABLE IF NOT EXISTS Buch_Autor (
    buch_id INTEGER,
    autor_id INTEGER,

    PRIMARY KEY (buch_id, autor_id)
);

CREATE TABLE IF NOT EXISTS Abholort (
    abholort_id INTEGER,
    bezeichnung VARCHAR(255),
    strasse VARCHAR(255) NOT NULL
    hausnr VARCHAR(10) NOT NULL,
    plz CHAR(5) NOT NULL,
    stadt VARCHAR(255) NOT NULL,
    latitude FLOAT NOT NULL,
    longitude FLOAT NOT NULL,

    PRIMARY KEY (abholort_id)
)




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