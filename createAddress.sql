UPDATE npi SET `Provider First Line Business Mailing Address` = NULL WHERE `Provider First Line Business Mailing Address` = '';
UPDATE npi SET `Provider Second Line Business Mailing Address` = NULL WHERE `Provider Second Line Business Mailing Address` = '';
UPDATE npi SET `Provider Business Mailing Address City Name` = NULL WHERE `Provider Business Mailing Address City Name` = '';
UPDATE npi SET `Provider Business Mailing Address State Name` = NULL WHERE `Provider Business Mailing Address State Name` = '';
UPDATE npi SET `Provider Business Mailing Address Postal Code` = NULL WHERE `Provider Business Mailing Address Postal Code` = '';
UPDATE npi SET `Provider Business Mailing Address Country Code` = NULL WHERE `Provider Business Mailing Address Country Code` = '';

CREATE TABLE IF NOT EXISTS address (address_id int NOT NULL AUTO_INCREMENT, npi varchar(10) NOT NULL, address_first varchar(55), address_second varchar(55),
address_city varchar(40), address_state varchar(40), address_zip varchar(20), address_country varchar(2), PRIMARY KEY (address_id), FOREIGN KEY (npi) REFERENCES provider(npi));

INSERT INTO address (npi, address_first, address_second, address_city, address_state, address_zip, address_country)
SELECT npi, `Provider First Line Business Mailing Address`, `Provider Second Line Business Mailing Address`, `Provider Business Mailing Address City Name`, `Provider Business Mailing Address State Name`,
`Provider Business Mailing Address Postal Code`, `Provider Business Mailing Address Country Code` FROM npi;
