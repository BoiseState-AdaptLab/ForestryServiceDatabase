# Forest Database README
Wed 12 Jan 2022 04:58:31 PM MST  
Author: Sandra Busch

### *How to set up and use the forestservicedb datbase:*

*Languages used: sql, psql, sqlalchemy for python*  

<br>

Modified scripts: (sql_scripts) 

- ForestServiceDatabaseINIT.sql  

Added scripts: (omr_scripts)  

- api.py
- map_all_tables.py
- validation_functions.py
- create_validation_tables.py
- format_validation.py

Please refer to the comments in the scripts as well.  
A database diagram located in the parent folder.

<br>

#### **Step 1**

Run the ForestServiceDatabaseINIT.sql script located in the sql-scripts dir.  
If running it in postgres, you can use the following command:  
psql -U [postgres username] -W [postgres password] -f ForestServiceDatabaseINIT.sql 

To log into the databse and see it's contents or validate the setup was successful you can use the following command:  
psql -U [postgres username] -W [postgres password] -d forestservicedb  
Then navigate through the database using psql commands, for help type:  
"\?" (for internal commands) or "\help" (for SQL commands) from within psql  
<br>
#### **Step 2**
Run the create_validation_tables.py script located in the orm_scripts dir.  
It will create additional tables for the database that will store information about the fields where we have a finite selection of possible values for. E.g., the field forest can only be "Sawtooth".  
This script will also create and provide the sqlalchemy "engine" to be used to map the tables from psql to sqlalchemy / python later.

<br>

#### **Step 3**  
Run the map_all_tables.py script located in the orm_scripts dir.  
It will create a map of the whole database to make it usable in python (sqlalchemy ORM). We now have the option to use the tables, colums, etc. as objects in python through the sqlalchemy library.  
https://www.sqlalchemy.org/  

<br>

#### **Interacting with the database:**

- validation_functions.py  
The functions in here can be used to retrieve data from the validation tables of the database to validate input before inserting it. (Not complete)
- api.py  
The functions in here can be used to interact with the database. E.g. create a report, insert values, update and delete values for fields /columns. (Not complete)
- format_validation.py  
Contains an idea of a function to verify if the format of a field is correct and matches the allowed input to the column. Should return information about the type of input a column accepts.  
It is not yet fully functioning. It returns the correct value, e.g. if a column accepts only integers it returns INTEGER, but it also returns all the names of the columns in the table as well. I think this happens because I used the inspect function which might always return all the names of the columns from the table it inpects...

<br>
<br>

#### **The diagram:**  
I used this website to create the database diagram:  
https://dbdiagram.io/d/617ba3a0fa17df5ea674935b  

In the left part of the diagram you can see the tables that ould contain the values of the fields we retrieved from a report.  
The valiadation table in the top middle would contain information about each field in a report we use to validate and it needs to be updated at the same time we update a column of the report table with new information. In the validation table we insert: the column name (~ field name), our confidence score for that field's value, the actual image of the field, and a true or false wheather this field has been validated by a person or not.
<br>  
In the middle of the diagram you can find the four validation tables that would contain all valid values for the forest field, the allotment field, the livestock field, and the ranger district field. We use them to check the values we got from the report against the accepted values.  
<br>
In the right part of the diagram we have all other validation tables. They should contain the valid formats for each table / column of the database. I have not used them yet though...they might become unneccessary?