CREATE TABLE IF NOT EXISTS npi_email (npi_email_id INT NOT NULL AUTO_INCREMENT, npi varchar(10) NOT NULL, email_id INT NOT NULL, PRIMARY KEY (npi_email_id), FOREIGN KEY (npi) REFERENCES provider(npi), FOREIGN KEY (email_id) REFERENCES email(email_id));

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "AK" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "AL" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "AR" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "AZ" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "CA" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "CO" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "CT" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "DC" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "DE" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "FL" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "GA" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "HI" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "IA" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "ID" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "IL" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "IN" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "KS" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "KY" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "LA" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "MA" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "MD" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "ME" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "MI" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "MN" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "MO" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "MS" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "MT" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "NC" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "ND" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "NE" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "NH" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "NJ" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "NM" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "NV" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "NY" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "OH" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "OK" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "OR" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "PA" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "RI" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "SC" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "SD" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "TN" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "TX" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "UT" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "VA" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "VT" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "WA" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "WI" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "WV" AND a.lastname = c.lastname AND a.firstname = c.firstname;

INSERT INTO npi_email (npi, email_id)
SELECT c.npi, a.email_id FROM email a INNER JOIN address b ON a.address_state = b.address_state INNER JOIN provider c ON b.npi = c.npi WHERE b.address_state IS NOT NULL AND a.address_state = "WY" AND a.lastname = c.lastname AND a.firstname = c.firstname;

CREATE TABLE IF NOT EXISTS npi_email_temp (npi varchar(10) NOT NULL, email_id int NOT NULL, dup_count int NOT NULL);

INSERT INTO npi_email_temp (npi, email_id, dup_count)
SELECT npi, email_id, count(*) FROM npi_email GROUP BY npi, email_id HAVING count(*) > 1;

DELETE FROM a
USING npi_email a INNER JOIN npi_email_temp b
ON a.npi = b.npi AND a.email_id = b.email_id;

INSERT INTO npi_email (npi, email_id)
SELECT npi, email_id FROM npi_email_temp;

DROP TABLE IF EXISTS npi_email_temp;

