CREATE OR REPLACE VIEW V_Exemplar_Status AS
SELECT 
    e.exemplar_id,
    CASE 
        WHEN EXISTS (
            SELECT 1 
            FROM Ausleihe a 
            WHERE a.exemplar_id = e.exemplar_id 
              AND a.tatsaechliches_rueckgabedatum IS NULL
        ) THEN 'verliehen'
        ELSE 'frei'
    END AS status
FROM Exemplar e;

CREATE OR REPLACE VIEW V_Ausleihe_Status AS
SELECT 
    ausleihe_id,
    CASE 
        WHEN tatsaechliches_rueckgabedatum IS NOT NULL THEN 'beendet'
        WHEN vereinbartes_rueckgabedatum < CURRENT_DATE THEN 'überfällig'
        ELSE 'aktiv'
    END AS status
FROM Ausleihe;