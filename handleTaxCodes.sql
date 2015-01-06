DELIMITER //

CREATE PROCEDURE `handleTaxCodes`()
BEGIN

  CALL getTaxData("207P00000X");
  CALL getTaxData("207PE0004X");
  CALL getTaxData("208M00000X");
  CALL getTaxData("2084A0401X");
  CALL getTaxData("2084P0802X");
  CALL getTaxData("2084B0002X");
  CALL getTaxData("2084P0804X");
  CALL getTaxData("2084N0600X");
  CALL getTaxData("2084D0003X");
  CALL getTaxData("2084F0202X");
  CALL getTaxData("2084P0805X");
  CALL getTaxData("2084P2900X");
  CALL getTaxData("2084P0800X");
  CALL getTaxData("2084P0015X");

	SET @delete_phone_table = 'DROP TABLE IF EXISTS phone';
	SET @create_phone_table = 'CREATE TABLE IF NOT EXISTS phone (phone_num VARCHAR(20))';

	PREPARE drop_phone_statement FROM @delete_phone_table;
	PREPARE create_phone_statement FROM @create_phone_table;

	EXECUTE drop_phone_statement;
	EXECUTE create_phone_statement;

	DEALLOCATE PREPARE drop_phone_statement;
	DEALLOCATE PREPARE create_phone_statement;

  CALL compilePhone("207P00000X");
  CALL compilePhone("207PE0004X");
  CALL compilePhone("208M00000X");
  CALL compilePhone("2084A0401X");
  CALL compilePhone("2084P0802X");
  CALL compilePhone("2084B0002X");
  CALL compilePhone("2084P0804X");
  CALL compilePhone("2084N0600X");
  CALL compilePhone("2084D0003X");
  CALL compilePhone("2084F0202X");
  CALL compilePhone("2084P0805X");
  CALL compilePhone("2084P2900X");
  CALL compilePhone("2084P0800X");
  CALL compilePhone("2084P0015X");

	SET @remove_hyphen = 'UPDATE phone SET phone_num = replace(phone_num, \'-\', \'\')';
	PREPARE remove_hyphen_statement FROM @remove_hyphen;
	EXECUTE remove_hyphen_statement;
	DEALLOCATE PREPARE remove_hyphen_statement;

	SET @dedupe = 'ALTER IGNORE TABLE phone ADD UNIQUE INDEX inx_phone (phone_num)';
	PREPARE dedupe_statement FROM @dedupe;
	EXECUTE dedupe_statement;
	DEALLOCATE PREPARE dedupe_statement;


END

//
