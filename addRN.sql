INSERT INTO report (npi, lastname, firstname, suffix, address_first, address_second, address_city, address_state, address_zip, tax_category)
SELECT a.npi, a.lastname, a.firstname, a.suffix, d.address_first, d.address_second, d.address_city, d.address_state, d.address_zip, "PA & RA & Nurse"
    FROM provider a INNER JOIN npi_taxonomy b ON a.npi = b.npi
    INNER JOIN taxonomy c ON b.taxonomy_id = c.taxonomy_id
    INNER JOIN address d ON a.npi = d.npi
    WHERE a.entity_type = "Individual" AND c.taxonomy_code IN ("367A00000X",
"367H00000X",
"364S00000X",
"364SA2100X",
"364SA2200X",
"364SC2300X",
"364SC1501X",
"364SC0200X",
"364SE0003X",
"364SE1400X",
"364SF0001X",
"364SG0600X",
"364SH1100X",
"364SH0200X",
"364SI0800X",
"364SL0600X",
"364SM0705X",
"364SN0000X",
"364SN0800X",
"364SX0106X",
"364SX0200X",
"364SX0204X",
"364SP0200X",
"364SP1700X",
"364SP2800X",
"364SP0808X",
"364SP0809X",
"364SP0807X",
"364SP0810X",
"364SP0811X",
"364SP0812X",
"364SP0813X",
"364SR0400X",
"364SS0200X",
"364ST0500X",
"364SW0102X",
"367500000X",
"363L00000X",
"363LA2100X",
"363LA2200X",
"363LC1500X",
"363LC0200X",
"363LF0000X",
"363LG0600X",
"363LN0000X",
"363LN0005X",
"363LX0001X",
"363LX0106X",
"363LP0200X",
"363LP0222X",
"363LP1700X",
"363LP2300X",
"363LP0808X",
"363LS0200X",
"363LW0102X",
"363A00000X",
"363AM0700X",
"363AS0400X");

UPDATE report a
JOIN npi_email b ON a.npi = b.npi
JOIN email c ON b.email_id = c.email_id
SET a.email = c.email
WHERE c.email IS NOT NULL;

UPDATE report a
JOIN npi_taxonomy b ON a.npi = b.npi
JOIN taxonomy c ON b.taxonomy_id = c.taxonomy_id
SET a.tax_main = c.taxonomy_code
WHERE b.taxonomy_rank = 1;

UPDATE report a
JOIN npi_taxonomy b ON a.npi = b.npi
JOIN taxonomy c ON b.taxonomy_id = c.taxonomy_id
SET a.tax_secondary = c.taxonomy_code
WHERE b.taxonomy_rank = 2;

UPDATE report a
JOIN npi_taxonomy b ON a.npi = b.npi
JOIN taxonomy c ON b.taxonomy_id = c.taxonomy_id
SET a.tax_other = c.taxonomy_code
WHERE b.taxonomy_rank = 3;

UPDATE report a
JOIN npi_phone b ON a.npi = b.npi
JOIN phone c ON b.phone_id = c.phone_id
SET a.phone_bus = c.phone_num
WHERE c.phone_type = "Business";

UPDATE report a
JOIN npi_phone b ON a.npi = b.npi
JOIN phone c ON b.phone_id = c.phone_id
SET a.phone_home = c.phone_num
WHERE c.phone_type = "Home";

UPDATE report a
JOIN npi_phone b ON a.npi = b.npi
JOIN phone c ON b.phone_id = c.phone_id
SET a.phone_cell = c.phone_num
WHERE c.phone_type = "Cell";

UPDATE report a
JOIN npi_phone b ON a.npi = b.npi
JOIN phone c ON b.phone_id = c.phone_id
SET a.phone_unchecked = c.phone_num
WHERE c.phone_type = "Unchecked";

SELECT * FROM report INTO OUTFILE '/Users/collinti/workspace/TaxCodeData/rn.csv' FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n'
