/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'SQL_DataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire SQL_DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

--Create Database 'Warehouse'
USE master;
Go

--Drop and recreate the 'SQL_DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name='SQL_DataWarehouse')
BEGIN
     ALTER DATABASE SQL_DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
     DROP DATABASE SQL_DataWarehouse;
END;
GO
--Create new database
CREATE DATABASE SQL_DataWarehouse;

--Switch the dataware house
USE SQL_DataWarehouse;
--Create Scheme
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
