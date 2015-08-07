CREATE TABLE IF NOT EXISTS provider (npi varchar(10) NOT NULL, entity_type varchar(20), is_sole varchar(1), is_orgsub varchar(1), orgname varchar(70), lastname varchar(35), firstname varchar(20), middlename varchar(20), prefix varchar(5), suffix varchar(5), credential varchar(20), gender varchar(1), PRIMARY KEY(npi));

INSERT INTO provider (npi, entity_type, is_sole, is_orgsub, orgname, lastname, firstname, middlename, prefix, suffix, credential, gender)
SELECT NPI, `Entity Type`, `Is Sole Proprietor`, `Is Organization Subpart`, `Provider Organization Name (Legal Business Name)`, `Provider Last Name (Legal Name)`, `Provider First Name`, `Provider Middle Name`, `Provider Name Prefix Text`, `Provider Name Suffix Text`, `Provider Credential Text`, `Provider Gender Code` from npi;
