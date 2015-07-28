DELIMITER //

DROP PROCEDURE IF EXISTS `handleTaxCodes`;

CREATE PROCEDURE `handleTaxCodes`()
BEGIN

    CALL getTaxData("207Q00000X");
    CALL getTaxData("207QA0401X");
    CALL getTaxData("207QA0000X");
    CALL getTaxData("207QA0505X");
    CALL getTaxData("207QB0002X");
    CALL getTaxData("207QG0300X");
    CALL getTaxData("207QH0002X");
    CALL getTaxData("207QS1201X");
    CALL getTaxData("207QS0010X");
    CALL getTaxData("208D00000X");
    CALL getTaxData("208M00000X");
    CALL getTaxData("202C00000X");
    CALL getTaxData("207R00000X");
    CALL getTaxData("207RA0401X");
    CALL getTaxData("207RA0000X");
    CALL getTaxData("207RA0201X");
    CALL getTaxData("207RB0002X");
    CALL getTaxData("207RC0000X");
    CALL getTaxData("207RI0001X");
    CALL getTaxData("207RC0001X");
    CALL getTaxData("207RC0200X");
    CALL getTaxData("207RE0101X");
    CALL getTaxData("207RG0100X");
    CALL getTaxData("207RG0300X");
    CALL getTaxData("207RH0000X");
    CALL getTaxData("207RH0003X");
    CALL getTaxData("207RI0008X");
    CALL getTaxData("207RH0002X");
    CALL getTaxData("207RI0200X");
    CALL getTaxData("207RI0011X");
    CALL getTaxData("207RM1200X");
    CALL getTaxData("207RX0202X");
    CALL getTaxData("207RN0300X");
    CALL getTaxData("207RP1001X");
    CALL getTaxData("207RR0500X");
    CALL getTaxData("207RS0012X");
    CALL getTaxData("207RS0010X");
    CALL getTaxData("207RT0003X");

    SET @delete_phone_table = 'DROP TABLE IF EXISTS phone';
    SET @create_phone_table = 'CREATE TABLE IF NOT EXISTS phone (phone_num VARCHAR(20))';

    PREPARE drop_phone_statement FROM @delete_phone_table;
    PREPARE create_phone_statement FROM @create_phone_table;

    EXECUTE drop_phone_statement;
    EXECUTE create_phone_statement;

    DEALLOCATE PREPARE drop_phone_statement;
    DEALLOCATE PREPARE create_phone_statement;

    CALL compilePhone("207Q00000X");
    CALL compilePhone("207QA0401X");
    CALL compilePhone("207QA0000X");
    CALL compilePhone("207QA0505X");
    CALL compilePhone("207QB0002X");
    CALL compilePhone("207QG0300X");
    CALL compilePhone("207QH0002X");
    CALL compilePhone("207QS1201X");
    CALL compilePhone("207QS0010X");
    CALL compilePhone("208D00000X");
    CALL compilePhone("208M00000X");
    CALL compilePhone("202C00000X");
    CALL compilePhone("207R00000X");
    CALL compilePhone("207RA0401X");
    CALL compilePhone("207RA0000X");
    CALL compilePhone("207RA0201X");
    CALL compilePhone("207RB0002X");
    CALL compilePhone("207RC0000X");
    CALL compilePhone("207RI0001X");
    CALL compilePhone("207RC0001X");
    CALL compilePhone("207RC0200X");
    CALL compilePhone("207RE0101X");
    CALL compilePhone("207RG0100X");
    CALL compilePhone("207RG0300X");
    CALL compilePhone("207RH0000X");
    CALL compilePhone("207RH0003X");
    CALL compilePhone("207RI0008X");
    CALL compilePhone("207RH0002X");
    CALL compilePhone("207RI0200X");
    CALL compilePhone("207RI0011X");
    CALL compilePhone("207RM1200X");
    CALL compilePhone("207RX0202X");
    CALL compilePhone("207RN0300X");
    CALL compilePhone("207RP1001X");
    CALL compilePhone("207RR0500X");
    CALL compilePhone("207RS0012X");
    CALL compilePhone("207RS0010X");
    CALL compilePhone("207RT0003X");

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
