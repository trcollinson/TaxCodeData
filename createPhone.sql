CREATE TABLE IF NOT EXISTS phone (phone_id INT NOT NULL AUTO_INCREMENT, phone_num varchar(20), PRIMARY KEY (phone_id));

INSERT INTO phone (phone_num)
SELECT `Provider Business Practice Location Address Telephone Number` FROM NPI WHERE LENGTH(`Provider Business Practice Location Address Telephone Number`) = 10 AND `Provider Business Practice Location Address Telephone Number` IS NOT NULL;

INSERT INTO phone (phone_num)
SELECT `Authorized Official Telephone Number` FROM NPI WHERE LENGTH(`Authorized Official Telephone Number`) = 10 AND `Authorized Official Telephone Number` IS NOT NULL;

INSERT INTO phone (phone_num)
SELECT `Provider Business Mailing Address Telephone Number` FROM NPI WHERE LENGTH(`Provider Business Mailing Address Telephone Number`) = 10 AND `Provider Business Mailing Address Telephone Number` IS NOT NULL;

ALTER IGNORE TABLE phone ADD UNIQUE INDEX phone_idx (phone_num);
