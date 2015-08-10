INSERT INTO report (npi, lastname, firstname, suffix, address_first, address_second, address_city, address_state, address_zip, email, tax_category)
SELECT a.npi, a.lastname, a.firstname, a.suffix, d.address_first, d.address_second, d.address_city, d.address_state, d.address_zip, f.email, "Emergency Medicine"
    FROM provider a INNER JOIN npi_taxonomy b ON a.npi = b.npi
    INNER JOIN taxonomy c ON b.taxonomy_id = c.taxonomy_id
    INNER JOIN address d ON a.npi = d.npi
    INNER JOIN npi_email e ON a.npi = e.npi
    INNER JOIN email f ON e.email_id = f.email_id
    WHERE a.entity_type = "Individual" AND c.taxonomy_code IN ("207P00000X",
"207PE0004X",
"207PH0002X",
"207PT0002X",
"207PP0204X",
"207PS0010X",
"207PE0005X"
);

INSERT INTO report (npi, lastname, firstname, suffix, address_first, address_second, address_city, address_state, address_zip, email, tax_category)
SELECT a.npi, a.lastname, a.firstname, a.suffix, d.address_first, d.address_second, d.address_city, d.address_state, d.address_zip, f.email, "Allergy & Immunology"
    FROM provider a INNER JOIN npi_taxonomy b ON a.npi = b.npi
    INNER JOIN taxonomy c ON b.taxonomy_id = c.taxonomy_id
    INNER JOIN address d ON a.npi = d.npi
    INNER JOIN npi_email e ON a.npi = e.npi
    INNER JOIN email f ON e.email_id = f.email_id
    WHERE a.entity_type = "Individual" AND c.taxonomy_code IN ("207K00000X",
"207KA0200X",
"207KI0005X");

INSERT INTO report (npi, lastname, firstname, suffix, address_first, address_second, address_city, address_state, address_zip, email, tax_category)
SELECT a.npi, a.lastname, a.firstname, a.suffix, d.address_first, d.address_second, d.address_city, d.address_state, d.address_zip, f.email, "Anesthesiology"
    FROM provider a INNER JOIN npi_taxonomy b ON a.npi = b.npi
    INNER JOIN taxonomy c ON b.taxonomy_id = c.taxonomy_id
    INNER JOIN address d ON a.npi = d.npi
    INNER JOIN npi_email e ON a.npi = e.npi
    INNER JOIN email f ON e.email_id = f.email_id
    WHERE a.entity_type = "Individual" AND c.taxonomy_code IN ("207L00000X",
"207LA0401X",
"207LC0200X",
"207LH0002X",
"207LP2900X",
"207LP3000X");

INSERT INTO report (npi, lastname, firstname, suffix, address_first, address_second, address_city, address_state, address_zip, email, tax_category)
SELECT a.npi, a.lastname, a.firstname, a.suffix, d.address_first, d.address_second, d.address_city, d.address_state, d.address_zip, f.email, "General Surgery"
    FROM provider a INNER JOIN npi_taxonomy b ON a.npi = b.npi
    INNER JOIN taxonomy c ON b.taxonomy_id = c.taxonomy_id
    INNER JOIN address d ON a.npi = d.npi
    INNER JOIN npi_email e ON a.npi = e.npi
    INNER JOIN email f ON e.email_id = f.email_id
    WHERE a.entity_type = "Individual" AND c.taxonomy_code IN ("208C00000X",
"207T00000X",
"204E00000X",
"208600000X",
"2086H0002X",
"2086S0120X",
"2086S0122X",
"2086S0105X",
"2086S0102X",
"2086X0206X",
"2086S0127X",
"2086S0129X");

INSERT INTO report (npi, lastname, firstname, suffix, address_first, address_second, address_city, address_state, address_zip, email, tax_category)
SELECT a.npi, a.lastname, a.firstname, a.suffix, d.address_first, d.address_second, d.address_city, d.address_state, d.address_zip, f.email, "Dermatology"
    FROM provider a INNER JOIN npi_taxonomy b ON a.npi = b.npi
    INNER JOIN taxonomy c ON b.taxonomy_id = c.taxonomy_id
    INNER JOIN address d ON a.npi = d.npi
    INNER JOIN npi_email e ON a.npi = e.npi
    INNER JOIN email f ON e.email_id = f.email_id
    WHERE a.entity_type = "Individual" AND c.taxonomy_code IN ("207N00000X",
"207NI0002X",
"207ND0900X",
"207ND0101X",
"207NP0225X",
"207NS0135X");

INSERT INTO report (npi, lastname, firstname, suffix, address_first, address_second, address_city, address_state, address_zip, email, tax_category)
SELECT a.npi, a.lastname, a.firstname, a.suffix, d.address_first, d.address_second, d.address_city, d.address_state, d.address_zip, f.email, "Family Medicine"
    FROM provider a INNER JOIN npi_taxonomy b ON a.npi = b.npi
    INNER JOIN taxonomy c ON b.taxonomy_id = c.taxonomy_id
    INNER JOIN address d ON a.npi = d.npi
    INNER JOIN npi_email e ON a.npi = e.npi
    INNER JOIN email f ON e.email_id = f.email_id
    WHERE a.entity_type = "Individual" AND c.taxonomy_code IN ("207Q00000X",
"207QA0401X",
"207QA0000X",
"207QA0505X",
"207QB0002X",
"207QG0300X",
"207QH0002X",
"207QS1201X",
"207QS0010X");

INSERT INTO report (npi, lastname, firstname, suffix, address_first, address_second, address_city, address_state, address_zip, email, tax_category)
SELECT a.npi, a.lastname, a.firstname, a.suffix, d.address_first, d.address_second, d.address_city, d.address_state, d.address_zip, f.email, "General Practice"
    FROM provider a INNER JOIN npi_taxonomy b ON a.npi = b.npi
    INNER JOIN taxonomy c ON b.taxonomy_id = c.taxonomy_id
    INNER JOIN address d ON a.npi = d.npi
    INNER JOIN npi_email e ON a.npi = e.npi
    INNER JOIN email f ON e.email_id = f.email_id
    WHERE a.entity_type = "Individual" AND c.taxonomy_code IN ("208D00000X");

INSERT INTO report (npi, lastname, firstname, suffix, address_first, address_second, address_city, address_state, address_zip, email, tax_category)
SELECT a.npi, a.lastname, a.firstname, a.suffix, d.address_first, d.address_second, d.address_city, d.address_state, d.address_zip, f.email, "Hospitalist"
    FROM provider a INNER JOIN npi_taxonomy b ON a.npi = b.npi
    INNER JOIN taxonomy c ON b.taxonomy_id = c.taxonomy_id
    INNER JOIN address d ON a.npi = d.npi
    INNER JOIN npi_email e ON a.npi = e.npi
    INNER JOIN email f ON e.email_id = f.email_id
    WHERE a.entity_type = "Individual" AND c.taxonomy_code IN ("208M00000X");

INSERT INTO report (npi, lastname, firstname, suffix, address_first, address_second, address_city, address_state, address_zip, email, tax_category)
SELECT a.npi, a.lastname, a.firstname, a.suffix, d.address_first, d.address_second, d.address_city, d.address_state, d.address_zip, f.email, "Medical Examiner"
    FROM provider a INNER JOIN npi_taxonomy b ON a.npi = b.npi
    INNER JOIN taxonomy c ON b.taxonomy_id = c.taxonomy_id
    INNER JOIN address d ON a.npi = d.npi
    INNER JOIN npi_email e ON a.npi = e.npi
    INNER JOIN email f ON e.email_id = f.email_id
    WHERE a.entity_type = "Individual" AND c.taxonomy_code IN ("202C00000X");

INSERT INTO report (npi, lastname, firstname, suffix, address_first, address_second, address_city, address_state, address_zip, email, tax_category)
SELECT a.npi, a.lastname, a.firstname, a.suffix, d.address_first, d.address_second, d.address_city, d.address_state, d.address_zip, f.email, "Internal Medicine"
    FROM provider a INNER JOIN npi_taxonomy b ON a.npi = b.npi
    INNER JOIN taxonomy c ON b.taxonomy_id = c.taxonomy_id
    INNER JOIN address d ON a.npi = d.npi
    INNER JOIN npi_email e ON a.npi = e.npi
    INNER JOIN email f ON e.email_id = f.email_id
    WHERE a.entity_type = "Individual" AND c.taxonomy_code IN ("207R00000X",
"207RA0401X",
"207RA0000X",
"207RA0201X",
"207RB0002X",
"207RC0000X",
"207RI0001X",
"207RC0001X",
"207RC0200X",
"207RE0101X",
"207RG0100X",
"207RG0300X",
"207RH0000X",
"207RH0003X",
"207RI0008X",
"207RH0002X",
"207RI0200X",
"207RI0011X",
"207RM1200X",
"207RX0202X",
"207RN0300X",
"207RP1001X",
"207RR0500X",
"207RS0012X",
"207RS0010X",
"207RT0003X");

INSERT INTO report (npi, lastname, firstname, suffix, address_first, address_second, address_city, address_state, address_zip, email, tax_category)
SELECT a.npi, a.lastname, a.firstname, a.suffix, d.address_first, d.address_second, d.address_city, d.address_state, d.address_zip, f.email, "Neurology"
    FROM provider a INNER JOIN npi_taxonomy b ON a.npi = b.npi
    INNER JOIN taxonomy c ON b.taxonomy_id = c.taxonomy_id
    INNER JOIN address d ON a.npi = d.npi
    INNER JOIN npi_email e ON a.npi = e.npi
    INNER JOIN email f ON e.email_id = f.email_id
    WHERE a.entity_type = "Individual" AND c.taxonomy_code IN ("204D00000X",
"204C00000X");

INSERT INTO report (npi, lastname, firstname, suffix, address_first, address_second, address_city, address_state, address_zip, email, tax_category)
SELECT a.npi, a.lastname, a.firstname, a.suffix, d.address_first, d.address_second, d.address_city, d.address_state, d.address_zip, f.email, "Obstetrics & Gynecology"
    FROM provider a INNER JOIN npi_taxonomy b ON a.npi = b.npi
    INNER JOIN taxonomy c ON b.taxonomy_id = c.taxonomy_id
    INNER JOIN address d ON a.npi = d.npi
    INNER JOIN npi_email e ON a.npi = e.npi
    INNER JOIN email f ON e.email_id = f.email_id
    WHERE a.entity_type = "Individual" AND c.taxonomy_code IN ("207V00000X",
"207VB0002X",
"207VC0200X",
"207VX0201X",
"207VG0400X",
"207VH0002X",
"207VM0101X",
"207VX0000X",
"207VE0102X");

INSERT INTO report (npi, lastname, firstname, suffix, address_first, address_second, address_city, address_state, address_zip, email, tax_category)
SELECT a.npi, a.lastname, a.firstname, a.suffix, d.address_first, d.address_second, d.address_city, d.address_state, d.address_zip, f.email, "Ophthalmology"
    FROM provider a INNER JOIN npi_taxonomy b ON a.npi = b.npi
    INNER JOIN taxonomy c ON b.taxonomy_id = c.taxonomy_id
    INNER JOIN address d ON a.npi = d.npi
    INNER JOIN npi_email e ON a.npi = e.npi
    INNER JOIN email f ON e.email_id = f.email_id
    WHERE a.entity_type = "Individual" AND c.taxonomy_code IN ("207W00000X");

INSERT INTO report (npi, lastname, firstname, suffix, address_first, address_second, address_city, address_state, address_zip, email, tax_category)
SELECT a.npi, a.lastname, a.firstname, a.suffix, d.address_first, d.address_second, d.address_city, d.address_state, d.address_zip, f.email, "Orthopaedic Surgery"
    FROM provider a INNER JOIN npi_taxonomy b ON a.npi = b.npi
    INNER JOIN taxonomy c ON b.taxonomy_id = c.taxonomy_id
    INNER JOIN address d ON a.npi = d.npi
    INNER JOIN npi_email e ON a.npi = e.npi
    INNER JOIN email f ON e.email_id = f.email_id
    WHERE a.entity_type = "Individual" AND c.taxonomy_code IN ("207X00000X",
"207XS0114X",
"207XX0004X",
"207XS0106X",
"207XS0117X",
"207XX0801X",
"207XP3100X",
"207XX0005X");

INSERT INTO report (npi, lastname, firstname, suffix, address_first, address_second, address_city, address_state, address_zip, email, tax_category)
SELECT a.npi, a.lastname, a.firstname, a.suffix, d.address_first, d.address_second, d.address_city, d.address_state, d.address_zip, f.email, "Otolaryngology"
    FROM provider a INNER JOIN npi_taxonomy b ON a.npi = b.npi
    INNER JOIN taxonomy c ON b.taxonomy_id = c.taxonomy_id
    INNER JOIN address d ON a.npi = d.npi
    INNER JOIN npi_email e ON a.npi = e.npi
    INNER JOIN email f ON e.email_id = f.email_id
    WHERE a.entity_type = "Individual" AND c.taxonomy_code IN ("207Y00000X",
"207YS0123X",
"207YX0602X",
"207YX0905X",
"207YX0901X",
"207YP0228X",
"207YX0007X",
"207YS0012X");

INSERT INTO report (npi, lastname, firstname, suffix, address_first, address_second, address_city, address_state, address_zip, email, tax_category)
SELECT a.npi, a.lastname, a.firstname, a.suffix, d.address_first, d.address_second, d.address_city, d.address_state, d.address_zip, f.email, "Pathology"
    FROM provider a INNER JOIN npi_taxonomy b ON a.npi = b.npi
    INNER JOIN taxonomy c ON b.taxonomy_id = c.taxonomy_id
    INNER JOIN address d ON a.npi = d.npi
    INNER JOIN npi_email e ON a.npi = e.npi
    INNER JOIN email f ON e.email_id = f.email_id
    WHERE a.entity_type = "Individual" AND c.taxonomy_code IN ("207ZP0101X",
"207ZP0102X",
"207ZB0001X",
"207ZP0104X",
"207ZC0006X",
"207ZP0105X",
"207ZC0500X",
"207ZD0900X",
"207ZF0201X",
"207ZH0000X",
"207ZI0100X",
"207ZM0300X",
"207ZP0007X",
"207ZN0500X",
"207ZP0213X");

INSERT INTO report (npi, lastname, firstname, suffix, address_first, address_second, address_city, address_state, address_zip, email, tax_category)
SELECT a.npi, a.lastname, a.firstname, a.suffix, d.address_first, d.address_second, d.address_city, d.address_state, d.address_zip, f.email, "Pediatrics"
    FROM provider a INNER JOIN npi_taxonomy b ON a.npi = b.npi
    INNER JOIN taxonomy c ON b.taxonomy_id = c.taxonomy_id
    INNER JOIN address d ON a.npi = d.npi
    INNER JOIN npi_email e ON a.npi = e.npi
    INNER JOIN email f ON e.email_id = f.email_id
    WHERE a.entity_type = "Individual" AND c.taxonomy_code IN ("208000000X",
"2080A0000X",
"2080C0008X",
"2080I0007X",
"2080P0006X",
"2080H0002X",
"2080T0002X",
"2080N0001X",
"2080P0008X",
"2080P0201X",
"2080P0202X",
"2080P0203X",
"2080P0204X",
"2080P0205X",
"2080P0206X",
"2080P0207X",
"2080P0208X",
"2080P0210X",
"2080P0214X",
"2080P0216X",
"2080T0004X",
"2080S0012X",
"2080S0010X");

INSERT INTO report (npi, lastname, firstname, suffix, address_first, address_second, address_city, address_state, address_zip, email, tax_category)
SELECT a.npi, a.lastname, a.firstname, a.suffix, d.address_first, d.address_second, d.address_city, d.address_state, d.address_zip, f.email, "Phlebology"
    FROM provider a INNER JOIN npi_taxonomy b ON a.npi = b.npi
    INNER JOIN taxonomy c ON b.taxonomy_id = c.taxonomy_id
    INNER JOIN address d ON a.npi = d.npi
    INNER JOIN npi_email e ON a.npi = e.npi
    INNER JOIN email f ON e.email_id = f.email_id
    WHERE a.entity_type = "Individual" AND c.taxonomy_code IN ("202K00000X");

INSERT INTO report (npi, lastname, firstname, suffix, address_first, address_second, address_city, address_state, address_zip, email, tax_category)
SELECT a.npi, a.lastname, a.firstname, a.suffix, d.address_first, d.address_second, d.address_city, d.address_state, d.address_zip, f.email, "Physical Med & Rehab"
    FROM provider a INNER JOIN npi_taxonomy b ON a.npi = b.npi
    INNER JOIN taxonomy c ON b.taxonomy_id = c.taxonomy_id
    INNER JOIN address d ON a.npi = d.npi
    INNER JOIN npi_email e ON a.npi = e.npi
    INNER JOIN email f ON e.email_id = f.email_id
    WHERE a.entity_type = "Individual" AND c.taxonomy_code IN ("208100000X",
"2081H0002X",
"2081N0008X",
"2081P2900X",
"2081P0010X",
"2081P0004X",
"2081S0010X");

INSERT INTO report (npi, lastname, firstname, suffix, address_first, address_second, address_city, address_state, address_zip, email, tax_category)
SELECT a.npi, a.lastname, a.firstname, a.suffix, d.address_first, d.address_second, d.address_city, d.address_state, d.address_zip, f.email, "Plastic Surgery"
    FROM provider a INNER JOIN npi_taxonomy b ON a.npi = b.npi
    INNER JOIN taxonomy c ON b.taxonomy_id = c.taxonomy_id
    INNER JOIN address d ON a.npi = d.npi
    INNER JOIN npi_email e ON a.npi = e.npi
    INNER JOIN email f ON e.email_id = f.email_id
    WHERE a.entity_type = "Individual" AND c.taxonomy_code IN ("208200000X",
"2082S0099X",
"2082S0105X");

INSERT INTO report (npi, lastname, firstname, suffix, address_first, address_second, address_city, address_state, address_zip, email, tax_category)
SELECT a.npi, a.lastname, a.firstname, a.suffix, d.address_first, d.address_second, d.address_city, d.address_state, d.address_zip, f.email, "Preventative Medicine"
    FROM provider a INNER JOIN npi_taxonomy b ON a.npi = b.npi
    INNER JOIN taxonomy c ON b.taxonomy_id = c.taxonomy_id
    INNER JOIN address d ON a.npi = d.npi
    INNER JOIN npi_email e ON a.npi = e.npi
    INNER JOIN email f ON e.email_id = f.email_id
    WHERE a.entity_type = "Individual" AND c.taxonomy_code IN ("2083A0100X",
"2083T0002X",
"2083X0100X",
"2083P0500X",
"2083P0901X",
"2083S0010X",
"2083P0011X");

INSERT INTO report (npi, lastname, firstname, suffix, address_first, address_second, address_city, address_state, address_zip, email, tax_category)
SELECT a.npi, a.lastname, a.firstname, a.suffix, d.address_first, d.address_second, d.address_city, d.address_state, d.address_zip, f.email, "Psychiatry"
    FROM provider a INNER JOIN npi_taxonomy b ON a.npi = b.npi
    INNER JOIN taxonomy c ON b.taxonomy_id = c.taxonomy_id
    INNER JOIN address d ON a.npi = d.npi
    INNER JOIN npi_email e ON a.npi = e.npi
    INNER JOIN email f ON e.email_id = f.email_id
    WHERE a.entity_type = "Individual" AND c.taxonomy_code IN ("2084A0401X",
"2084P0802X",
"2084B0002X",
"2084P0804X",
"2084N0600X",
"2084D0003X",
"2084F0202X",
"2084P0805X",
"2084H0002X",
"2084P0005X",
"2084N0400X",
"2084N0402X",
"2084N0008X",
"2084P2900X",
"2084P0800X",
"2084P0015X",
"2084S0012X",
"2084S0010X",
"2084V0102X");

INSERT INTO report (npi, lastname, firstname, suffix, address_first, address_second, address_city, address_state, address_zip, email, tax_category)
SELECT a.npi, a.lastname, a.firstname, a.suffix, d.address_first, d.address_second, d.address_city, d.address_state, d.address_zip, f.email, "Pain Medicine"
    FROM provider a INNER JOIN npi_taxonomy b ON a.npi = b.npi
    INNER JOIN taxonomy c ON b.taxonomy_id = c.taxonomy_id
    INNER JOIN address d ON a.npi = d.npi
    INNER JOIN npi_email e ON a.npi = e.npi
    INNER JOIN email f ON e.email_id = f.email_id
    WHERE a.entity_type = "Individual" AND c.taxonomy_code IN ("208VP0014X",
"208VP0000X");

INSERT INTO report (npi, lastname, firstname, suffix, address_first, address_second, address_city, address_state, address_zip, email, tax_category)
SELECT a.npi, a.lastname, a.firstname, a.suffix, d.address_first, d.address_second, d.address_city, d.address_state, d.address_zip, f.email, "Radiology"
    FROM provider a INNER JOIN npi_taxonomy b ON a.npi = b.npi
    INNER JOIN taxonomy c ON b.taxonomy_id = c.taxonomy_id
    INNER JOIN address d ON a.npi = d.npi
    INNER JOIN npi_email e ON a.npi = e.npi
    INNER JOIN email f ON e.email_id = f.email_id
    WHERE a.entity_type = "Individual" AND c.taxonomy_code IN ("2085B0100X",
"2085D0003X",
"2085R0202X",
"2085U0001X",
"2085H0002X",
"2085N0700X",
"2085N0904X",
"2085P0229X",
"2085R0001X",
"2085R0205X",
"2085R0203X",
"2085R0204X");

INSERT INTO report (npi, lastname, firstname, suffix, address_first, address_second, address_city, address_state, address_zip, email, tax_category)
SELECT a.npi, a.lastname, a.firstname, a.suffix, d.address_first, d.address_second, d.address_city, d.address_state, d.address_zip, f.email, "Thoratic Surgery"
    FROM provider a INNER JOIN npi_taxonomy b ON a.npi = b.npi
    INNER JOIN taxonomy c ON b.taxonomy_id = c.taxonomy_id
    INNER JOIN address d ON a.npi = d.npi
    INNER JOIN npi_email e ON a.npi = e.npi
    INNER JOIN email f ON e.email_id = f.email_id
    WHERE a.entity_type = "Individual" AND c.taxonomy_code IN ("208G00000X");

INSERT INTO report (npi, lastname, firstname, suffix, address_first, address_second, address_city, address_state, address_zip, email, tax_category)
SELECT a.npi, a.lastname, a.firstname, a.suffix, d.address_first, d.address_second, d.address_city, d.address_state, d.address_zip, f.email, "Transplant Surgery"
    FROM provider a INNER JOIN npi_taxonomy b ON a.npi = b.npi
    INNER JOIN taxonomy c ON b.taxonomy_id = c.taxonomy_id
    INNER JOIN address d ON a.npi = d.npi
    INNER JOIN npi_email e ON a.npi = e.npi
    INNER JOIN email f ON e.email_id = f.email_id
    WHERE a.entity_type = "Individual" AND c.taxonomy_code IN ("204F00000X");

INSERT INTO report (npi, lastname, firstname, suffix, address_first, address_second, address_city, address_state, address_zip, email, tax_category)
SELECT a.npi, a.lastname, a.firstname, a.suffix, d.address_first, d.address_second, d.address_city, d.address_state, d.address_zip, f.email, "Urology"
    FROM provider a INNER JOIN npi_taxonomy b ON a.npi = b.npi
    INNER JOIN taxonomy c ON b.taxonomy_id = c.taxonomy_id
    INNER JOIN address d ON a.npi = d.npi
    INNER JOIN npi_email e ON a.npi = e.npi
    INNER JOIN email f ON e.email_id = f.email_id
    WHERE a.entity_type = "Individual" AND c.taxonomy_code IN ("208800000X",
"2088P0231X");

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
