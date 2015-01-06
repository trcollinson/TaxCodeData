DELIMITER //

CREATE PROCEDURE `getTaxData`(tax_code varchar(12))
BEGIN

	SET @drop_if_exists = concat('DROP TABLE IF EXISTS ', tax_code);

	PREPARE drop_table_statement FROM @drop_if_exists;

	EXECUTE drop_table_statement;

	DEALLOCATE PREPARE drop_table_statement;

	SELECT @taxon := `Healthcare Provider Taxonomy_1` FROM npi WHERE `Healthcare Provider Taxonomy Code_1` = tax_code LIMIT 1;

	SET @create_the_table = concat('CREATE TABLE  IF NOT EXISTS ',  tax_code, ' AS (SELECT `Provider Last Name (Legal Name)`, `Provider First Name`, `Provider Gender`, `Provider Business Practice Location Address Telephone Number`, `Provider Business Mailing Address Telephone Number`, `Authorized Official Telephone Number`, `Provider First Line Business Mailing Address`, `Provider Second Line Business Mailing Address`, `Provider Business Mailing Address City Name`, `Provider Business Mailing Address State Name`, `Provider Business Mailing Address Postal Code` FROM npi WHERE "', tax_code, '" IN( `Healthcare Provider Taxonomy Code_1`, `Healthcare Provider Taxonomy Code_2`, `Healthcare Provider Taxonomy Code_3`, `Healthcare Provider Taxonomy Code_4`, `Healthcare Provider Taxonomy Code_5`, `Healthcare Provider Taxonomy Code_6`, `Healthcare Provider Taxonomy Code_7`, `Healthcare Provider Taxonomy Code_8`, `Healthcare Provider Taxonomy Code_9`, `Healthcare Provider Taxonomy Code_10`, `Healthcare Provider Taxonomy Code_11`, `Healthcare Provider Taxonomy Code_12`, `Healthcare Provider Taxonomy Code_13`, `Healthcare Provider Taxonomy Code_14`, `Healthcare Provider Taxonomy Code_15` ) AND `Entity Type` = "Individual" AND `Provider Business Mailing Address Country Code` = "US")');

	PREPARE statement FROM @create_the_table;

	EXECUTE statement;

	DEALLOCATE PREPARE statement;

	SET @delete_duplicate_phone = concat('DELETE FROM ', tax_code, ' WHERE `Provider Business Practice Location Address Telephone Number` IN (SELECT in_temp.`Provider Business Practice Location Address Telephone Number` FROM (SELECT delete_temp.`Provider Business Practice Location Address Telephone Number` FROM ', tax_code, ' delete_temp GROUP BY delete_temp.`Provider Business Practice Location Address Telephone Number` HAVING count(*) > 1) as in_temp)');

	PREPARE delete_statement FROM @delete_duplicate_phone;

	EXECUTE delete_statement;

	DEALLOCATE PREPARE  delete_statement;

	SET @add_tax_code = concat('ALTER TABLE ', tax_code, ' ADD COLUMN Taxonmy_Code VARCHAR(12) DEFAULT "', tax_code, '"');

	PREPARE add_tax_code_statement FROM @add_tax_code;

	EXECUTE add_tax_code_statement;

	DEALLOCATE PREPARE add_tax_code_statement;

	SET @add_taxon = concat('ALTER TABLE ', tax_code, ' ADD COLUMN Taxonmy VARCHAR(200) DEFAULT "', @taxon, '"');

	PREPARE add_taxon_statement FROM @add_taxon;

	EXECUTE add_taxon_statement;

	DEALLOCATE PREPARE add_taxon_statement;

	SET @save_file = concat('SELECT * FROM ', tax_code, ' INTO OUTFILE \'/Users/collinti/workspace/TaxCodeData/', tax_code, '-', @taxon, '.csv\' FIELDS TERMINATED BY \',\' ENCLOSED BY \'"\' LINES TERMINATED BY \'\n\'');

	PREPARE save_file_statement FROM @save_file;

	EXECUTE save_file_statement;

	DEALLOCATE PREPARE save_file_statement;

END

//
