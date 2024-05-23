#!/bin/bash

# Define user e passwd
my_user=''
my_pwd=''

# Define a database
database=''

# Armazena a data atual
today=$(date	+%Y-%m-%d)

# Local para armazenar o backup e nome arquivo
backup_dir=''
dump_file=$database-$today'.sql'

/usr/bin/mariadb-dump --user=$my_user --password=$my_pwd --databases $database -v > $backup_dir$dump_file

exit

