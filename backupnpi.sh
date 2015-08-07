#! /bin/bash

mysqldump --user=npi-user --password npi_data > backup/npi-data-$(date +%F).sql
