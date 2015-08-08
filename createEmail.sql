/* Remember to run with optional --local-infile command line option. */

CREATE TABLE IF NOT EXISTS email (email_id INT NOT NULL AUTO_INCREMENT, fullname varchar(100), firstname varchar(20), middlename varchar(20), lastname varchar(35),
	suffix varchar(5), taxonomy_code varchar(10), taxonomy varchar(100), taxonomy_other varchar(100), address_city varchar(50), address_state varchar(40),
	address_zip varchar(20), address_county varchar(20), msa_code varchar(10), email varchar(100), PRIMARY KEY (email_id));
	
LOAD DATA LOCAL INFILE 'email/drbill_physician_alabama_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_alaska_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_arizona_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_arkansas_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_california_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_colorado_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_connecticut_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_delaware_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_district_of_columbia_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_florida_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_georgia_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_hawaii_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_idaho_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_illinois_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_indiana_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_iowa_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_kansas_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_kentucky_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_louisiana_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_maine_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_maryland_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_massachusetts_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_michigan_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_minnesota_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_mississippi_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_missouri_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_montana_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_nebraska_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_nevada_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_new_hampshire_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_new_jersey_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_new_mexico_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_new_york_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_north_carolina_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_north_dakota_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_ohio_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_oklahoma_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_oregon_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_pennsylvania_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_rhode_island_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_south_carolina_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_south_dakota_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_tennessee_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_texas_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_utah_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_vermont_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_virginia_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_washington_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_west_virginia_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_wisconsin_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);

LOAD DATA LOCAL INFILE 'email/drbill_physician_wyoming_email.csv'
INTO TABLE email
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(fullname, firstname, middlename, lastname, suffix, taxonomy_code, taxonomy, taxonomy_other, address_city, address_state, address_zip, address_county, msa_code, @var)
SET email = TRIM(TRAILING '\r' FROM @var);
