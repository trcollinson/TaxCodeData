INSERT INTO report (npi, lastname, firstname, suffix, address_first, address_second, address_city, address_state, address_zip, email, tax_category)
SELECT a.npi, a.lastname, a.firstname, a.suffix, d.address_first, d.address_second, d.address_city, d.address_state, d.address_zip, f.email, "Emergency Medicine"
    FROM provider a INNER JOIN npi_taxonomy b ON a.npi = b.npi
    INNER JOIN taxonomy c ON b.taxonomy_id = c.taxonomy_id
    INNER JOIN address d ON a.npi = d.npi
    INNER JOIN npi_email e ON a.npi = e.npi
    INNER JOIN email f ON e.email_id = f.email_id
    WHERE c.taxonomy_code IN ("207P00000X",
"207PE0004X",
"207PH0002X",
"207PT0002X",
"207PP0204X",
"207PS0010X",
"207PE0005X"
);
