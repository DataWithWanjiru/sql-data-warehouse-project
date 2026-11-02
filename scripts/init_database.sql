/*
Create Database and Schemas
=============================================================
********Script Purpose*****:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
*********WARNING*****:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be ********permanently deleted********. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse') --SELECT 1 is a common SQL convention for existence checks.
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO
--create database called DataWarehouse
CREATE DATABASE DataWarehouse;
GO
 --Select the database that you want to use
Use DataWarehouse;
GO
--Create Schemas
CREATE SCHEMA Bronze;
GO
CREATE SCHEMA Silver;
GO
CREATE SCHEMA Gold;
GO
