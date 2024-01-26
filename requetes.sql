SELECT Heures AS "Horaires à l'arrêt Madeleine le lundi"
FROM horaire
WHERE Station_ID_Station = 3 AND Jour_ID_Jour = 1
ORDER BY Jour_ID_Jour, Heures;

SELECT Heures AS "Horaires à l'arrêt République le lundi"
FROM horaire
WHERE Station_ID_Station = 4 AND Jour_ID_Jour = 1
ORDER BY Jour_ID_Jour, Heures;

SELECT s.Nom_Station AS "Parcours de la ligne 2 direction Kersec"
FROM station s
JOIN (
    SELECT Station_ID_Station, MIN(Heures) as PremiereHeure
    FROM horaire
    GROUP BY Station_ID_Station
) as h ON s.ID_Station = h.Station_ID_Station
ORDER BY h.PremiereHeure;

SELECT DISTINCT
    CASE 
        WHEN s.Desservi = 1 THEN CONCAT('L''arrêt n''est pas desservi. Veuillez vous reporter à l''arrêt ', (SELECT Nom_Station FROM station WHERE ID_Station = 7), '.')
        ELSE "Arrêt desservi."
    END AS "Horaires à l'arrêt Petit Tohannic (Lundi)"
FROM 
    station s
JOIN 
    horaire h ON s.ID_Station = h.Station_ID_Station
JOIN 
    jour j ON h.Jour_ID_Jour = j.ID_JOUR
WHERE 
    s.Desservi = 1
    AND j.ID_JOUR = 1;

SELECT 
    l.Nom_Ligne,
    CASE 
        WHEN l.ID_Ligne = 1 THEN GROUP_CONCAT(DISTINCT s.Nom_Station ORDER BY h.Heures SEPARATOR ', ')
        WHEN l.ID_Ligne = 2 THEN GROUP_CONCAT(DISTINCT s.Nom_Station ORDER BY h.Heures DESC SEPARATOR ', ')
        ELSE ''
    END AS "Stations desservis"
FROM 
    ligne l
JOIN 
    Ligne_has_Station lhs ON l.ID_Ligne = lhs.Ligne_IdLigne
JOIN 
    station s ON lhs.Station_IdStation = s.ID_Station
JOIN 
    horaire h ON s.ID_Station = h.Station_ID_Station
GROUP BY 
    l.Nom_Ligne, l.ID_Ligne
ORDER BY 
    l.Nom_Ligne;










