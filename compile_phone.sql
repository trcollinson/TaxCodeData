DELIMITER //

DROP PROCEDURE IF EXISTS `compilePhone`;

CREATE PROCEDURE `compilePhone`(tax_code varchar(12))
BEGIN

	SET @get_loc = concat('INSERT INTO phone (phone_num) SELECT `Provider Business Practice Location Address Telephone Number` as phone  FROM ', tax_code, ' WHERE `Provider Business Practice Location Address Telephone Number` IS NOT NULL AND `Provider Business Practice Location Address Telephone Number` != \'\'');
	SET @get_mail = concat('INSERT INTO phone (phone_num) SELECT `Provider Business Mailing Address Telephone Number` as phone  FROM ', tax_code, ' WHERE `Provider Business Mailing Address Telephone Number` IS NOT NULL AND `Provider Business Mailing Address Telephone Number` != \'\'');
	SET @get_auth = concat('INSERT INTO phone (phone_num) SELECT `Authorized Official Telephone Number` as phone  FROM ', tax_code, ' WHERE `Authorized Official Telephone Number` IS NOT NULL AND `Authorized Official Telephone Number` != \'\'');

	PREPARE get_loc_statement FROM @get_loc; 
	PREPARE get_mail_statement FROM @get_mail; 
	PREPARE get_auth_statement FROM @get_auth; 

	EXECUTE get_loc_statement;
	EXECUTE get_mail_statement;
	EXECUTE get_auth_statement;

	DEALLOCATE PREPARE get_loc_statement;
	DEALLOCATE PREPARE get_mail_statement;
	DEALLOCATE PREPARE get_auth_statement;

END

//
