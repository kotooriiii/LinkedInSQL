# LinkedIn SQL Mini Project
 A database using SQL, triggers, indexes, and Java to run a semi-decent console GUI.
 
 Requirements:
 - Since this project was created on a local Windows computer. Some requirements must be met given you are also working on a Windows PC: <br>
    1. [Postgres Server for Windows executable](https://link-url-here.org) . Download and remember the port number and password if any. If using a different port number than the default (5432), update the Java code.
    2. [Postgres JDBC Driver JAR API library](https://jdbc.postgresql.org/download/postgresql-42.3.3.jar) . Make sure your IDE reads this as a library.
 - Make sure the libraries in java/lib are recognized by your IDE.
 - Change the absolute path data CSV files in load_data.sql 
 
 All SQL scripts are located in the sql/src folder. This folder has the create_index, create_tables, create_trigger, and load_data files used to load our data and be able to use it effectively.
 
 All Java source code is located in the java/src folder. The file is convoluted but is documented thoroughly. 
 
 
