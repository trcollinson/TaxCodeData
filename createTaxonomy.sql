UPDATE npi SET `Healthcare Provider Taxonomy Code_1` = NULL WHERE `Healthcare Provider Taxonomy Code_1` = '';
UPDATE npi SET `Healthcare Provider Taxonomy Code_2` = NULL WHERE `Healthcare Provider Taxonomy Code_2` = '';
UPDATE npi SET `Healthcare Provider Taxonomy Code_3` = NULL WHERE `Healthcare Provider Taxonomy Code_3` = '';
UPDATE npi SET `Healthcare Provider Taxonomy Code_4` = NULL WHERE `Healthcare Provider Taxonomy Code_4` = '';
UPDATE npi SET `Healthcare Provider Taxonomy Code_5` = NULL WHERE `Healthcare Provider Taxonomy Code_5` = '';
UPDATE npi SET `Healthcare Provider Taxonomy Code_6` = NULL WHERE `Healthcare Provider Taxonomy Code_6` = '';
UPDATE npi SET `Healthcare Provider Taxonomy Code_7` = NULL WHERE `Healthcare Provider Taxonomy Code_7` = '';
UPDATE npi SET `Healthcare Provider Taxonomy Code_8` = NULL WHERE `Healthcare Provider Taxonomy Code_8` = '';
UPDATE npi SET `Healthcare Provider Taxonomy Code_9` = NULL WHERE `Healthcare Provider Taxonomy Code_9` = '';
UPDATE npi SET `Healthcare Provider Taxonomy Code_10` = NULL WHERE `Healthcare Provider Taxonomy Code_10` = '';
UPDATE npi SET `Healthcare Provider Taxonomy Code_11` = NULL WHERE `Healthcare Provider Taxonomy Code_11` = '';
UPDATE npi SET `Healthcare Provider Taxonomy Code_12` = NULL WHERE `Healthcare Provider Taxonomy Code_12` = '';
UPDATE npi SET `Healthcare Provider Taxonomy Code_13` = NULL WHERE `Healthcare Provider Taxonomy Code_13` = '';
UPDATE npi SET `Healthcare Provider Taxonomy Code_14` = NULL WHERE `Healthcare Provider Taxonomy Code_14` = '';
UPDATE npi SET `Healthcare Provider Taxonomy Code_15` = NULL WHERE `Healthcare Provider Taxonomy Code_15` = '';

CREATE TABLE IF NOT EXISTS taxonomy (taxonomy_id INT NOT NULL AUTO_INCREMENT, taxonomy_code varchar(10), PRIMARY KEY (taxonomy_id));

INSERT INTO taxonomy (taxonomy_code)
SELECT `Healthcare Provider Taxonomy Code_1` FROM NPI WHERE `Healthcare Provider Taxonomy Code_1` IS NOT NULL;

INSERT INTO taxonomy (taxonomy_code)
SELECT `Healthcare Provider Taxonomy Code_2` FROM NPI WHERE `Healthcare Provider Taxonomy Code_2` IS NOT NULL;

INSERT INTO taxonomy (taxonomy_code)
SELECT `Healthcare Provider Taxonomy Code_3` FROM NPI WHERE `Healthcare Provider Taxonomy Code_3` IS NOT NULL;

INSERT INTO taxonomy (taxonomy_code)
SELECT `Healthcare Provider Taxonomy Code_4` FROM NPI WHERE `Healthcare Provider Taxonomy Code_4` IS NOT NULL;

INSERT INTO taxonomy (taxonomy_code)
SELECT `Healthcare Provider Taxonomy Code_5` FROM NPI WHERE `Healthcare Provider Taxonomy Code_5` IS NOT NULL;

INSERT INTO taxonomy (taxonomy_code)
SELECT `Healthcare Provider Taxonomy Code_6` FROM NPI WHERE `Healthcare Provider Taxonomy Code_6` IS NOT NULL;

INSERT INTO taxonomy (taxonomy_code)
SELECT `Healthcare Provider Taxonomy Code_7` FROM NPI WHERE `Healthcare Provider Taxonomy Code_7` IS NOT NULL;

INSERT INTO taxonomy (taxonomy_code)
SELECT `Healthcare Provider Taxonomy Code_8` FROM NPI WHERE `Healthcare Provider Taxonomy Code_8` IS NOT NULL;

INSERT INTO taxonomy (taxonomy_code)
SELECT `Healthcare Provider Taxonomy Code_9` FROM NPI WHERE `Healthcare Provider Taxonomy Code_9` IS NOT NULL;

INSERT INTO taxonomy (taxonomy_code)
SELECT `Healthcare Provider Taxonomy Code_10` FROM NPI WHERE `Healthcare Provider Taxonomy Code_10` IS NOT NULL;

INSERT INTO taxonomy (taxonomy_code)
SELECT `Healthcare Provider Taxonomy Code_11` FROM NPI WHERE `Healthcare Provider Taxonomy Code_11` IS NOT NULL;

INSERT INTO taxonomy (taxonomy_code)
SELECT `Healthcare Provider Taxonomy Code_12` FROM NPI WHERE `Healthcare Provider Taxonomy Code_12` IS NOT NULL;

INSERT INTO taxonomy (taxonomy_code)
SELECT `Healthcare Provider Taxonomy Code_13` FROM NPI WHERE `Healthcare Provider Taxonomy Code_13` IS NOT NULL;

INSERT INTO taxonomy (taxonomy_code)
SELECT `Healthcare Provider Taxonomy Code_14` FROM NPI WHERE `Healthcare Provider Taxonomy Code_14` IS NOT NULL;

INSERT INTO taxonomy (taxonomy_code)
SELECT `Healthcare Provider Taxonomy Code_15` FROM NPI WHERE `Healthcare Provider Taxonomy Code_15` IS NOT NULL;

ALTER IGNORE TABLE taxonomy ADD UNIQUE INDEX taxonomy_idx (taxonomy_code);
