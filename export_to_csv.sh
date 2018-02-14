#!/bin/bash
# Created by - Vishnu Prasad B
# Date - 14/Feb/2018

mysql_user="$1"
mysql_pwd="$2"
mysql_db_name="$3"
mysql_path="$4"
destination_folder="$5"

# If the folder doesn't exist then create one.
if [ ! -d $destination_folder ];
then
        sudo -- sh -c "mkdir $destination_folder"
fi

# Get all the tables of the DB and then export each column to respective csv.
for column in `mysql -u$mysql_user -p$mysql_pwd $mysql_db_name -Bse "show tables;"`
do
        echo $column
        sudo -- sh -c "mysql -u$mysql_user -p$mysql_pwd $mysql_db_name -Bse \"SELECT * FROM $column INTO OUTFILE  '$mysql_path$column.csv' FIELDS TERMINATED BY ',' ENCLOSED BY '\\\"' LINES TERMINATED BY '\n'\";"
        sudo -- sh -c "sudo mv $mysql_path$column.csv $destination_folder"
done
