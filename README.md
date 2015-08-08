Taxonomy Code Data
==================

The cleaning of the taxonomy code data for all practitioners is a step by step process.

###Moving/Normalizing Data from the Npi Table###

Original data is held in an "npi" table. The npi table has 362 columns and no indexes. The data is malformed and the column names are unworkable. Data: npi_columns.txt

First we create a new account in mysql and tie it to a new database. We then restore a copy of the npi table to this new database. Commands: createDB.txt. Note: This is not a SQL script due to the fact that a password must be created and used which shouldn't be checked into git.

A backup script is created to take regular backups of the database as updates are made. Script: backupnpi.sh

The first data to be extracted is the provider data. This includes individuals and businesses, names, and npi numbers. The npi number is used as the primary key and will be an important key throughout the other tables. Script: createProviderTable.sql

Providers can have many phone numbers. We extract all phones from the many phone fields in the npi table into their own table. We also clean up the phone table. We remove empty entries, turning them to DBNULL and remove special characters, normalizing the data. We only move valid phone numbers. We then deduplicate the numbers. We make a relationship junction table between npi and phone, allowing providers to have multiple phone numbers without duplicating the numbers. Script: createPhone.sql, createPhoneJoinNpi.sql

Providers can have up to 15 taxonomy codes and those codes are ranked. We make a taxonomy table where we put all possible taxonomy codes, cleaning up bad data, and deduplicating possible codes. In the old npi table there were upwords of 50,000,000 taxonomy code fields. This was reduced to just better than 800 fields with no data loss. We then made a junction table to create the relationships and ranks between providers and their taxonomy codes. Script: createTaxonomy.sql, create TaxonomyJoinNpi.sql

There is only one usable set of addresses in the npi table. We create a table and because of the provider to address relationship being one to one and due to the address data being dirty, we just relate them directly through a foreign key contraint. Script: createAddress.sql

###Updating the phone numbers to be more useful###

Phone numbers can be in one of four categories: Business, Home, Cell, Unchecked. There were many complete duplicate entries (provider had the same number multiple times). These were deduplicated with no data loss. Following this, Business numbers were found by comparing numbers that were used by multiple providers. All other numbers were marked as unchecked. Script: updatePhoneForBusiness.sql


