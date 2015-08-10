CREATE TABLE IF NOT EXISTS report (npi NOT NULL varchar(10), lastname varchar(35), firstname varchar(20), suffix varchar(5),
    address_first varchar(55), address_second varchar(55), address_city varchar(40), address_state varchar(40), address_zip varchar(20),
    email varchar(100), phone_bus varchar(20), phone_home varchar(20), phone_cell varchar(20), phone_unchecked varchar(20),
    tax_category varchar(30), tax_main varchar(10), tax_secondary varchar(10), tax_other varchar(10), FOREIGN KEY npi REFERENCES provider(npi));

