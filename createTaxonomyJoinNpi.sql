CREATE TABLE IF NOT EXISTS npi_taxonomy (npi_taxonomy_id INT NOT NULL AUTO_INCREMENT, npi varchar(10) NOT NULL, taxonomy_id int NOT NULL, taxonomy_rank int NOT NULL, PRIMARY KEY (npi_taxonomy_id), FOREIGN KEY (npi) REFERENCES provider(npi), FOREIGN KEY (taxonomy_id) REFERENCES taxonomy(taxonomy_id));

INSERT INTO npi_taxonomy (npi, taxonomy_id, taxonomy_rank)
SELECT a.npi, b.taxonomy_id, 1 FROM npi a, taxonomy b WHERE a.`Healthcare Provider Taxonomy Code_1` IS NOT NULL AND a.`Healthcare Provider Taxonomy Code_1` = b.taxonomy_code;

INSERT INTO npi_taxonomy (npi, taxonomy_id, taxonomy_rank)
SELECT a.npi, b.taxonomy_id, 2 FROM npi a, taxonomy b WHERE a.`Healthcare Provider Taxonomy Code_2` IS NOT NULL AND a.`Healthcare Provider Taxonomy Code_2` = b.taxonomy_code;

INSERT INTO npi_taxonomy (npi, taxonomy_id, taxonomy_rank)
SELECT a.npi, b.taxonomy_id, 3 FROM npi a, taxonomy b WHERE a.`Healthcare Provider Taxonomy Code_3` IS NOT NULL AND a.`Healthcare Provider Taxonomy Code_3` = b.taxonomy_code;

INSERT INTO npi_taxonomy (npi, taxonomy_id, taxonomy_rank)
SELECT a.npi, b.taxonomy_id, 4 FROM npi a, taxonomy b WHERE a.`Healthcare Provider Taxonomy Code_4` IS NOT NULL AND a.`Healthcare Provider Taxonomy Code_4` = b.taxonomy_code;

INSERT INTO npi_taxonomy (npi, taxonomy_id, taxonomy_rank)
SELECT a.npi, b.taxonomy_id, 5 FROM npi a, taxonomy b WHERE a.`Healthcare Provider Taxonomy Code_5` IS NOT NULL AND a.`Healthcare Provider Taxonomy Code_5` = b.taxonomy_code;

INSERT INTO npi_taxonomy (npi, taxonomy_id, taxonomy_rank)
SELECT a.npi, b.taxonomy_id, 6 FROM npi a, taxonomy b WHERE a.`Healthcare Provider Taxonomy Code_6` IS NOT NULL AND a.`Healthcare Provider Taxonomy Code_6` = b.taxonomy_code;

INSERT INTO npi_taxonomy (npi, taxonomy_id, taxonomy_rank)
SELECT a.npi, b.taxonomy_id, 7 FROM npi a, taxonomy b WHERE a.`Healthcare Provider Taxonomy Code_7` IS NOT NULL AND a.`Healthcare Provider Taxonomy Code_7` = b.taxonomy_code;

INSERT INTO npi_taxonomy (npi, taxonomy_id, taxonomy_rank)
SELECT a.npi, b.taxonomy_id, 8 FROM npi a, taxonomy b WHERE a.`Healthcare Provider Taxonomy Code_8` IS NOT NULL AND a.`Healthcare Provider Taxonomy Code_8` = b.taxonomy_code;

INSERT INTO npi_taxonomy (npi, taxonomy_id, taxonomy_rank)
SELECT a.npi, b.taxonomy_id, 9 FROM npi a, taxonomy b WHERE a.`Healthcare Provider Taxonomy Code_9` IS NOT NULL AND a.`Healthcare Provider Taxonomy Code_9` = b.taxonomy_code;

INSERT INTO npi_taxonomy (npi, taxonomy_id, taxonomy_rank)
SELECT a.npi, b.taxonomy_id, 10 FROM npi a, taxonomy b WHERE a.`Healthcare Provider Taxonomy Code_10` IS NOT NULL AND a.`Healthcare Provider Taxonomy Code_10` = b.taxonomy_code;

INSERT INTO npi_taxonomy (npi, taxonomy_id, taxonomy_rank)
SELECT a.npi, b.taxonomy_id, 11 FROM npi a, taxonomy b WHERE a.`Healthcare Provider Taxonomy Code_11` IS NOT NULL AND a.`Healthcare Provider Taxonomy Code_11` = b.taxonomy_code;

INSERT INTO npi_taxonomy (npi, taxonomy_id, taxonomy_rank)
SELECT a.npi, b.taxonomy_id, 12 FROM npi a, taxonomy b WHERE a.`Healthcare Provider Taxonomy Code_12` IS NOT NULL AND a.`Healthcare Provider Taxonomy Code_12` = b.taxonomy_code;

INSERT INTO npi_taxonomy (npi, taxonomy_id, taxonomy_rank)
SELECT a.npi, b.taxonomy_id, 13 FROM npi a, taxonomy b WHERE a.`Healthcare Provider Taxonomy Code_13` IS NOT NULL AND a.`Healthcare Provider Taxonomy Code_13` = b.taxonomy_code;

INSERT INTO npi_taxonomy (npi, taxonomy_id, taxonomy_rank)
SELECT a.npi, b.taxonomy_id, 14 FROM npi a, taxonomy b WHERE a.`Healthcare Provider Taxonomy Code_14` IS NOT NULL AND a.`Healthcare Provider Taxonomy Code_14` = b.taxonomy_code;

INSERT INTO npi_taxonomy (npi, taxonomy_id, taxonomy_rank)
SELECT a.npi, b.taxonomy_id, 15 FROM npi a, taxonomy b WHERE a.`Healthcare Provider Taxonomy Code_15` IS NOT NULL AND a.`Healthcare Provider Taxonomy Code_15` = b.taxonomy_code;
