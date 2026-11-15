CREATE TABLE IF NOT EXISTS Genre (
    genre_id INTEGER,
    name VARCHAR(64) NOT NULL,

    PRIMARY KEY (genre_id)
);

CREATE TABLE IF NOT EXISTS Verlag (
    verlag_id INTEGER,
    verlagsname VARCHAR(255) NOT NULL,
    sitz VARCHAR(255) NOT NULL,

    PRIMARY KEY (verlag_id)
);

CREATE TABLE IF NOT EXISTS Sprache (
    sprache_id INTEGER,
    bezeichnung VARCHAR(30) NOT NULL,
    sprachcode VARCHAR(3) NOT NULL,

    PRIMARY KEY (sprache_id),
    UNIQUE (sprachcode)
);

CREATE TABLE IF NOT EXISTS Buch (
    buch_id INTEGER,
    genre_id INTEGER NOT NULL,
    verlag_id INTEGER NOT NULL,
    sprache_id INTEGER NOT NULL,
    titel VARCHAR(255) NOT NULL,
    erscheinungsjahr DATE,
    isbn VARCHAR(17) NOT NULL,

    CONSTRAINT fk_buch_genre FOREIGN KEY (genre_id) REFERENCES Genre (genre_id),
    CONSTRAINT fk_buch_verlag FOREIGN KEY (verlag_id) REFERENCES Verlag (verlag_id),
    CONSTRAINT fk_buch_sprache FOREIGN KEY (sprache_id) REFERENCES Sprache (sprache_id),

    PRIMARY KEY (buch_id)
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

    CONSTRAINT fk_buchAutor_buch FOREIGN KEY (buch_id) REFERENCES Buch (buch_id),
    CONSTRAINT fk_buchAutor_autor FOREIGN KEY (autor_id) REFERENCES Autor (autor_id),

    PRIMARY KEY (buch_id, autor_id)
);

CREATE TABLE IF NOT EXISTS Abholort (
    abholort_id INTEGER,
    bezeichnung VARCHAR(255),
    strasse VARCHAR(255) NOT NULL,
    hausnr VARCHAR(10) NOT NULL,
    plz CHAR(5) NOT NULL,
    stadt VARCHAR(255) NOT NULL,
    latitude FLOAT NOT NULL,
    longitude FLOAT NOT NULL,

    PRIMARY KEY (abholort_id)
);

CREATE TABLE IF NOT EXISTS Benutzer (
    benutzer_id INTEGER,
    vorname VARCHAR(30) NOT NULL,
    nachname VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL,
    telefon VARCHAR(20) NOT NULL,
    strasse VARCHAR(255) NOT NULL,
    hausnr VARCHAR(10) NOT NULL,
    plz CHAR(5) NOT NULL,
    stadt VARCHAR(255) NOT NULL,
    latitude FLOAT NOT NULL,
    longitude FLOAT NOT NULL,

    PRIMARY KEY (benutzer_id),
    UNIQUE(email)
);

CREATE TABLE IF NOT EXISTS Exemplar (
    exemplar_id INTEGER,
    buch_id INTEGER NOT NULL,
    besitzer_id INTEGER NOT NULL,
    abholort_id INTEGER NOT NULL,
    beschreibung VARCHAR(255),
    ausleihdauer INTERVAL NOT NULL,

    CONSTRAINT fk_exemplar_buch FOREIGN KEY (buch_id) REFERENCES Buch (buch_id),
    CONSTRAINT fk_exemplar_besitzer FOREIGN KEY (besitzer_id) REFERENCES Benutzer (benutzer_id),
    CONSTRAINT fk_exemplar_abholort FOREIGN KEY (abholort_id) REFERENCES Abholort (abholort_id),

    PRIMARY KEY (exemplar_id)
)
