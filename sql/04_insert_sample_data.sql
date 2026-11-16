INSERT INTO Genre (genre_id, name) VALUES
(1, 'Roman'),
(2, 'Krimi & Thriller'),
(3, 'Science-Fiction'),
(4, 'Fantasy'),
(5, 'Biografie'),
(6, 'Sachbuch'),
(7, 'Historisch'),
(8, 'Kinderbuch'),
(9, 'Philosophie'),
(10, 'Poesie');

INSERT INTO Verlag (verlag_id, verlagsname, sitz) VALUES
(1, 'Suhrkamp Verlag', 'Berlin'),
(2, 'Carlsen Verlag', 'Hamburg'),
(3, 'Rowohlt Verlag', 'Reinbek'),
(4, 'Penguin Random House', 'München'),
(5, 'C.H. Beck', 'München'),
(6, 'Ullstein Verlag', 'Berlin'),
(7, 'Diogenes Verlag', 'Zürich'),
(8, 'Hanser Verlag', 'München'),
(9, 'Klett-Cotta', 'Stuttgart'),
(10, 'Piper Verlag', 'München');

INSERT INTO Sprache (sprache_id, bezeichnung, sprachcode) VALUES
(1, 'Deutsch', 'DE'),
(2, 'Englisch', 'EN'),
(3, 'Französisch', 'FR'),
(4, 'Spanisch', 'ES'),
(5, 'Italienisch', 'IT'),
(6, 'Niederländisch', 'NL'),
(7, 'Polnisch', 'PL'),
(8, 'Russisch', 'RU'),
(9, 'Japanisch', 'JA'),
(10, 'Portugiesisch', 'PT');

INSERT INTO Autor (autor_id, vorname, nachname) VALUES
(1, 'Johann Wolfgang', 'von Goethe'),
(2, 'Friedrich', 'Schiller'),
(3, 'Thomas', 'Mann'),
(4, 'Franz', 'Kafka'),
(5, 'Jane', 'Austen'),
(6, 'George', 'Orwell'),
(7, 'Stephen', 'King'),
(8, 'J.K.', 'Rowling'),
(9, 'Marc-Uwe', 'Kling'),
(10, 'Walter', 'Moers');

INSERT INTO Abholort (abholort_id, bezeichnung, strasse, hausnr, plz, stadt, latitude, longitude) VALUES
-- München
(1, 'Marienplatz Infopoint', 'Marienplatz', '1', '80331', 'München', 48.1371, 11.5754),
(2, 'Münchner Stadtbibliothek Motorama', 'Rosenheimer Str.', '30', '81669', 'München', 48.1289, 11.5925),
(3, 'Englischer Garten Chinesischer Turm', 'Englischer Garten', '3', '80538', 'München', 48.1525, 11.5920),
(4, 'Hauptbahnhof München', 'Bayerstraße', '10a', '80335', 'München', 48.1402, 11.5583),
(5, 'Universität / Geschwister-Scholl-Platz', 'Geschwister-Scholl-Platz', '1', '80539', 'München', 48.1508, 11.5802),
(6, 'Olympiazentrum Treffpunkt', 'Spiridon-Louis-Ring', '21', '80809', 'München', 48.1754, 11.5518),
-- Berlin
(7, 'Alexanderplatz Weltzeituhr', 'Alexanderplatz', '1', '10178', 'Berlin', 52.5212, 13.4133),
(8, 'Café Bücherwurm Schöneberg', 'Hauptstraße', '42', '10827', 'Berlin', 52.4851, 13.3512),
(9, 'Kulturbrauerei Prenzlauer Berg', 'Schönhauser Allee', '36', '10435', 'Berlin', 52.5387, 13.4135),
(10, 'Bahnhof Zoologischer Garten', 'Hardenbergplatz', '11', '10623', 'Berlin', 52.5073, 13.3326);

INSERT INTO Benutzer (benutzer_id, vorname, nachname, email, telefon, strasse, hausnr, plz, stadt, latitude, longitude) VALUES
-- München
(1, 'Anna', 'Schmidt', 'anna.schmidt@email.de', '01511234567', 'Sendlinger Straße', '14', '80331', 'München', 48.1351, 11.5698),
(2, 'Ben', 'Weber', 'ben.weber@email.de', '01729876543', 'Leopoldstraße', '52', '80802', 'München', 48.1614, 11.5861),
(3, 'Clara', 'Becker', 'clara.becker@email.de', '01605554433', 'Nymphenburger Straße', '86', '80636', 'München', 48.1518, 11.5392),
(4, 'David', 'Hoffmann', 'david.hoffmann@email.de', '01763332211', 'Lindwurmstraße', '112', '80337', 'München', 48.1257, 11.5546),
-- Berlin
(5, 'Eva', 'Wagner', 'eva.wagner@email.de', '01578889900', 'Torstraße', '94', '10119', 'Berlin', 52.5294, 13.4018),
(6, 'Felix', 'Koch', 'felix.koch@email.de', '01714445566', 'Kantstraße', '45', '10625', 'Berlin', 52.5061, 13.3182),
(7, 'Greta', 'Richter', 'greta.richter@email.de', '01756667788', 'Oranienstraße', '185', '10999', 'Berlin', 52.5008, 13.4215),
-- Andere Städte
(8, 'Jonas', 'Klein', 'jonas.klein@email.de', '01529998877', 'Mönckebergstraße', '17', '20095', 'Hamburg', 53.5511, 9.9992),
(9, 'Mia', 'Wolf', 'mia.wolf@email.de', '01781112233', 'Ehrenstraße', '32', '50672', 'Köln', 50.9383, 6.9428),
(10, 'Leon', 'Schröder', 'leon.schroeder@email.de', '01794443322', 'Zeil', '81', '60313', 'Frankfurt am Main', 50.1144, 8.6811);

INSERT INTO Buch (buch_id, genre_id, verlag_id, sprache_id, titel, erscheinungsjahr, isbn) VALUES
(1, 1, 1, 1, 'Faust I', '1808-01-01', '978-3-15-000001-0'),
(2, 1, 3, 1, 'Die Verwandlung', '1915-01-01', '978-3-15-000002-7'),
(3, 3, 4, 2, '1984', '1949-06-08', '978-0-452-28423-4'),
(4, 4, 2, 2, 'Der Hobbit', '1937-09-21', '978-3-608-93830-2'),
(5, 3, 4, 1, 'QualityLand', '2017-01-13', '978-3-551-58358-1'),
(6, 4, 2, 1, 'Die unendliche Geschichte', '1979-09-01', '978-3-522-12800-2'),
(7, 1, 6, 2, 'Stolz und Vorurteil', '1813-01-28', '978-3-15-001000-2'),
(8, 6, 5, 1, 'Das Kapital', '1867-09-14', '978-3-865-39121-6'),
(9, 4, 2, 1, 'Harry Potter und der Stein der Weisen', '1997-06-26', '978-3-551-55167-2'),
(10, 1, 3, 1, 'Tschick', '2010-03-01', '978-3-551-58223-2');

INSERT INTO Buch_Autor (buch_id, autor_id) VALUES
(1, 1),  -- Faust I -> Goethe
(2, 4),  -- Die Verwandlung -> Kafka
(3, 6),  -- 1984 -> Orwell
(4, 7),  -- Der Hobbit -> King (Dummy-Zuordnung)
(5, 9),  -- QualityLand -> Kling
(6, 10), -- Die unendliche Geschichte -> Moers
(7, 5),  -- Stolz und Vorurteil -> Austen
(8, 2),  -- Das Kapital -> Schiller (Dummy-Zuordnung)
(9, 8),  -- Harry Potter -> Rowling
(10, 9); -- Tschick -> Kling (Dummy-Zuordnung)

INSERT INTO Exemplar (exemplar_id, buch_id, besitzer_id, abholort_id, beschreibung, ausleihdauer) VALUES
(1, 1, 1, 1, 'Guter Zustand, leichte Gebrauchsspuren', '14 days'),
(2, 2, 1, 2, 'Wie neu, ungelesen', '30 days'),
(3, 3, 1, 3, 'Taschenbuch, etwas vergilbt', '21 days'),
(4, 4, 4, 4, 'Hardcover mit Schutzumschlag', '14 days'),
(5, 5, 5, 5, 'Sehr gut erhalten', '14 days'),
(6, 6, 6, 6, 'Gebraucht, aber vollständig', '30 days'),
(7, 7, 6, 7, 'Jubiläumsausgabe', '14 days'),
(8, 8, 8, 8, 'Schweres Buch, akademischer Zustand', '60 days'),
(9, 9, 9, 9, 'Gelesen, aber top in Schuss', '14 days'),
(10, 10, 9, 10, 'Guter Zustand', '21 days');

INSERT INTO Wunschliste (benutzer_id, buch_id) VALUES
(2, 1),
(2, 2),
(2, 3),
(3, 3),
(7, 9),
(7, 10),
(8, 10),
(9, 4),
(10, 5),
(10, 6);

INSERT INTO Ausleihe (ausleihe_id, exemplar_id, entleiher_id, abholort_id, ausleihbeginn, vereinbartes_rueckgabedatum, tatsaechliches_rueckgabedatum) VALUES
(1, 1, 2, 1, '2026-01-10', '2026-01-24', '2026-01-22'), -- Ben (2) leiht Faust I (Besitzer Anna 1) am Marienplatz (1) -> Abgeschlossen
(2, 2, 2, 2, '2026-02-01', '2026-03-03', '2026-02-28'), -- Ben (2) leiht Verwandlung (Besitzer Anna 1) am Motorama (2) -> Abgeschlossen
(3, 3, 3, 3, '2026-03-05', '2026-03-26', NULL),          -- Clara (3) leiht 1984 (Besitzer Anna 1) im Engl. Garten (3) -> Aktiv!
(4, 4, 3, 4, '2026-03-10', '2026-03-24', NULL),          -- Clara (3) leiht Hobbit (Besitzer David 4) am Hbf München (4) -> Aktiv!
(5, 5, 6, 7, '2026-01-15', '2026-01-29', '2026-01-28'), -- Felix (6, Berlin) leiht QualityLand (Besitzer Eva 5, Berlin) am Alex (7) -> Abgeschlossen
(6, 6, 7, 8, '2026-02-10', '2026-03-12', '2026-03-10'), -- Greta (7, Berlin) leiht Unendl. Gesch. (Besitzer Felix 6, Berlin) in Schöneberg (8) -> Abgeschlossen
(7, 7, 5, 9, '2026-04-01', '2026-04-15', NULL),          -- Eva (5, Berlin) leiht Stolz & Vorurteil (Besitzer Felix 6, Berlin) im Prenzlauer Berg (9) -> Aktiv!
(8, 8, 1, 8, '2026-01-05', '2026-03-06', '2026-03-05'), -- Anna (1) leiht Das Kapital (Besitzer Jonas 8) in Schöneberg (8) -> Abgeschlossen
(9, 9, 7, 9, '2026-04-05', '2026-04-19', NULL),          -- Greta (7, Berlin) leiht Harry Potter (Besitzer Mia 9) im Prenzlauer Berg (9) -> Aktiv!
(10, 10, 8, 10, '2026-02-15', '2026-03-08', '2026-03-07'); -- Jonas (8) leiht Tschick (Besitzer Mia 9) am Zoo Berlin (10) -> Abgeschlossen

INSERT INTO Anfrage (anfrage_id, exemplar_id, benutzer_id, abholort_id, status) VALUES
(1, 1, 2, 1, 'akzeptiert'), -- Führte zu Ausleihe 1
(2, 2, 2, 2, 'akzeptiert'), -- Führte zu Ausleihe 2
(3, 3, 3, 3, 'akzeptiert'),    -- Führte zu aktiver Ausleihe 3
(4, 3, 2, 3, 'abgelehnt'),     -- Ben wollte Exemplar 3 auch (Wunschliste), war aber schon an Clara vergeben
(5, 4, 3, 4, 'akzeptiert'),    -- Führte zu aktiver Ausleihe 4
(6, 5, 6, 7, 'akzeptiert'), -- Führte zu Ausleihe 5
(7, 9, 7, 9, 'akzeptiert'),    -- Führte zu aktiver Ausleihe 9
(8, 10, 7, 10, 'offen'),       -- Greta (7) fragt Tschick an (steht auf ihrer Wunschliste!)
(9, 4, 9, 4, 'offen'),         -- Mia (9) fragt Der Hobbit an (steht auf ihrer Wunschliste!)
(10, 6, 10, 6, 'offen');       -- Leon (10) fragt Die unendliche Geschichte an (steht auf seiner Wunschliste!)

INSERT INTO Bewertung (ausleihe_id, bewerter_id, sterne, kommentar) VALUES
(1, 2, 5, 'Super Buch, danke Anna für die schnelle Übergabe am Marienplatz!'),
(1, 1, 5, 'Ben war super pünktlich und das Buch kam im Top-Zustand zurück.'),
(2, 2, 4, ''),
(2, 1, 5, 'Wie immer alles bestens mit Ben!'),
(5, 6, 5, 'Sehr zuverlässige Übergabe am Alexanderplatz.'),
(5, 5, 5, 'Felix ist ein sehr freundlicher Entleiher.'),
(6, 7, 4, ''),
(8, 1, 5, 'Danke für die unkomplizierte Leihe!'),
(10, 8, 5, 'Super Buch für die Zugfahrt, gerne wieder.'),
(10, 9, 4, 'Alles reibungslos gelaufen.');

INSERT INTO Nachricht (nachricht_id, sender_id, empfaenger_id, inhalt, anfrage_id) VALUES
(1, 2, 1, 'Hallo Anna, ich habe Faust I auf meiner Wunschliste und würde es mir gerne ausleihen!', 1),
(2, 1, 2, 'Hi Ben, sehr gerne! Passt dir morgen 17 Uhr am Marienplatz?', 1),
(3, 3, 1, 'Hallo Anna, ich würde total gerne 1984 lesen. Klappt die Übergabe im Englischen Garten?', 3),
(4, 1, 3, 'Hallo Clara, ja klar, ich habe deine Anfrage gerade angenommen.', 3),
(5, 2, 1, 'Schade, dass 1984 schon weg ist – sag gerne Bescheid, wenn es wieder frei wird!', 4),
(6, 7, 9, 'Hallo Mia, ich habe gesehen, du hast Tschick im Angebot. Wann hättest du Zeit?', 8),
(7, 9, 7, 'Hi Greta, ab nächste Woche bin ich wieder am Bahnhof Zoo unterwegs, passt das?', 8),
(8, 9, 4, 'Hallo David, ich bin demnächst in München und würde mir gerne den Hobbit leihen.', 9),
(9, 10, 6, 'Hi Felix, wäre für Die unendliche Geschichte auch ein Versand möglich?', 10),
(10, 6, 10, 'Hallo Leon, wir können bestimmt eine Lösung finden, ich schau mir deine Anfrage an.', 10);
