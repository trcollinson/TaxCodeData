CREATE TABLE IF NOT EXISTS npi_phone_temp (npi varchar(10) NOT NULL, phone_id int NOT NULL, dup_count int NOT NULL);

INSERT INTO npi_phone_temp (npi, phone_id, dup_count)
SELECT npi, phone_id, count(*) FROM npi_phone GROUP BY npi, phone_id HAVING count(*) > 1;

DELETE FROM a
USING npi_phone a INNER JOIN npi_phone_temp b
ON a.npi = b.npi AND a.phone_id = b.phone_id;

INSERT INTO npi_phone (npi, phone_id)
SELECT npi, phone_id FROM npi_phone_temp;

DROP TABLE IF EXISTS npi_phone_temp;

ALTER TABLE phone ADD phone_type varchar(10) AFTER phone_num;

CREATE TABLE IF NOT EXISTS phone_type_temp (phone_id int NOT NULL);

INSERT INTO phone_type_temp (phone_id)
SELECT phone_id FROM npi_phone GROUP BY phone_id HAVING count(*) > 1;

UPDATE phone a INNER JOIN phone_type_temp b SET a.phone_type = "Business" WHERE a.phone_id = b.phone_id;

DROP TABLE IF EXISTS phone_type_temp;

UPDATE phone SET phone_type = "Unchecked" WHERE phone_type IS NULL;
