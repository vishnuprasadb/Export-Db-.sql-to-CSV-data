# Export-Db(sql)-to-CSV-data
This Bash script converts all your mysql tables to Excel or CSV.

How to use:

1. Download the source code.
2. Save it in a bash file(.sh)
3. Give executable permissions(chmod a+x <filename>)
4. Run the script.
   Eg. Suppose the sql file is "sql_to_csv.sh"
   sudo ./sql_to_csv.sh <mysqlUsername> <mysqlPassword> <dbName> <mysqlPath> <destinationFolderPath>
   
Parameters to be given to the script in the following order.
1. mysql_user
2. mysql_pwd
3. mysql_db_name
4. mysql_path
5. destination_folder
   
The Csv filename will be same as the DB Table names.

Generally mysqlPath would be "/var/lib/mysql-files/" -- This folder will have mysql permissions.

So inorder to access the files this is copied to a convinient folder which you would prefer. 
