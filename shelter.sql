-- SELECT ALL Homelessness Data --------------------------
-- Customer order: year DESC and then by quarters DESC --------
SELECT h.*, l.location_name, l.location_id, p.population
FROM homelessness.homelessness as h 
LEFT JOIN homelessness.locations as l 
ON  l.location_id = h.location_id 
LEFT JOIN populations as p ON 
h.location_id = p.location_id 
AND p.year = h.year
ORDER BY year DESC, CASE WHEN h.period = 'oct-dec' THEN 1
	WHEN h.period = 'jul-sep' THEN 2
	WHEN h.period = 'apr-jun' THEN 3
	WHEN h.period = 'jan-mar' THEN 4
    ELSE 5 END;