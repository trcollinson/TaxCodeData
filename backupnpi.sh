#! /bin/bash

if [ -e backup/npi-data-$(date +%F).sql ]; then
	tar -czvf backup/npi-data-$(date +%F-%H%M%S).tar.gz backup/npi-data-$(date +%F).sql
fi

mysqldump --user=npi-user --password npi_data > backup/npi-data-$(date +%F).sql
