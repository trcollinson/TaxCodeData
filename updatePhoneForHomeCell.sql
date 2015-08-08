UPDATE phone a INNER JOIN cell b
SET a.phone_type = "Home"
WHERE a.phone_num = b.cell_num AND a.phone_type = "Unchecked" AND b.carrier IN ("UNKNOWN", "FAILURE"); 

UPDATE phone a INNER JOIN cell b
SET a.phone_type = "Cell"
WHERE a.phone_num = b.cell_num AND a.phone_type = "Unchecked" AND b.carrier NOT IN ("UNKNOWN", "FAILURE");
