/* 
Script Purpose:
    This script creates a new database named 'DataWarehouse'after checking if it already exists
    If the database exists, it is dropped and recreated. Additionally, the script sets up
    three schemas within the database; 'bronze', 'silver and 'gold'
WARNING :
    Running this script will drop the entire "DataWarehouse" database if it exists
    All data in the database will be permanently deleted. Proceed with caution and
    ensure you have proper backups before running this script */

USE master;
GO
-- Drop and recreate "Datawarehouse" database

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
     ALTER DATABASE DataWarehouse set SINGLE_USER WITH ROLLBACK_IMMEDIATE;
     DROP DATABASE DataWareHouse;
END;
GO
-- Create the "DataWarehouse" database

CREATE DATABASE DataWarehouse;
GO

USE DataWareHouse;
GO

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver ;
GO

CREATE SCHEMA gold;
GO
