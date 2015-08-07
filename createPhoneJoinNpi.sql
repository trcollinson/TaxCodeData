CREATE TABLE IF NOT EXISTS npi_phone (npi_phone_id INT NOT NULL AUTO_INCREMENT, npi varchar(10) NOT NULL, phone_id int NOT NULL, PRIMARY KEY (npi_phone_id), FOREIGN KEY (npi) REFERENCES provider(npi), FOREIGN KEY (phone_id) REFERENCES phone(phone_id));

INSERT INTO npi_phone (npi, phone_id)
SELECT a.npi, b.phone_id FROM npi a, phone b WHERE a.`Provider Business Practice Location Address Telephone Number` = b.phone_num;

INSERT INTO npi_phone (npi, phone_id)
SELECT a.npi, b.phone_id FROM npi a, phone b WHERE a.`Authorized Official Telephone Number` = b.phone_num;

INSERT INTO npi_phone (npi, phone_id)
SELECT a.npi, b.phone_id FROM npi a, phone b WHERE a.`Provider Business Mailing Address Telephone Number` = b.phone_num;
