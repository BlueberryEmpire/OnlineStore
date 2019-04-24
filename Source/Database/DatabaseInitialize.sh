#! /bin/bash

echo "Script begins."

read -p "Enter the host name: " hostName
read -p "Enter the database username: " username
read -s -p "Enter the database password: " password

echo "Running Schema.sql..."
mysql -h $hostName -u $username --password=$password < Schema.sql
echo "...done running Schema.sql."

echo "Running Data.sql..."
mysql -h $hostName -u $username --password=$password < Data.sql
echo "...done running Data.sql."

echo "Script ends."

