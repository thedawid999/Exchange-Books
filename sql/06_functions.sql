CREATE OR REPLACE FUNCTION exemplare_im_umkreis(
    p_benutzer_id INTEGER,
    p_radius_km DOUBLE PRECISION DEFAULT 5.0
)
RETURNS TABLE (
    exemplar_id INTEGER,
    buch_titel VARCHAR,
    besitzer_id INTEGER,
    abholort_bezeichnung VARCHAR,
    strasse VARCHAR,
    hausnr VARCHAR,
    stadt VARCHAR,
    distanz_km DOUBLE PRECISION
) AS $$
BEGIN
    RETURN QUERY
    SELECT 
        e.exemplar_id,
        bu.titel AS buch_titel,
        e.besitzer_id,
        a.bezeichnung AS abholort_bezeichnung,
        a.strasse AS strasse,
        a.hausnr AS hausnr,
        a.stadt,
        ROUND(
            (ST_Distance(
                ST_SetSRID(ST_MakePoint(a.longitude, a.latitude), 4326)::geography,
                ST_SetSRID(ST_MakePoint(ben.longitude, ben.latitude), 4326)::geography
            ) / 1000.0)::numeric, 2
        )::DOUBLE PRECISION AS distanz_km
    FROM Exemplar e
    JOIN Buch bu ON e.buch_id = bu.buch_id
    JOIN Abholort a ON e.abholort_id = a.abholort_id
    JOIN V_Exemplar_Status es ON e.exemplar_id = es.exemplar_id
    CROSS JOIN Benutzer ben
    WHERE ben.benutzer_id = p_benutzer_id
      AND e.besitzer_id <> p_benutzer_id  -- Eigene Bücher ausblenden
      AND es.status = 'frei'              -- Nur aktuell verfügbare Exemplare
      AND ST_DWithin(
          ST_SetSRID(ST_MakePoint(a.longitude, a.latitude), 4326)::geography,
          ST_SetSRID(ST_MakePoint(ben.longitude, ben.latitude), 4326)::geography,
          p_radius_km * 1000.0
      )
    ORDER BY distanz_km ASC;
END;
$$ LANGUAGE plpgsql;