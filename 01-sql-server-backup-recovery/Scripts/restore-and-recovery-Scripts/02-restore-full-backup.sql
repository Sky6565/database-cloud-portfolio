/*

    Project: SQL Server Backup and Recovery

    Database: AdventureWorks2014

    Purpose: Creates a full database backup.

    Author: Godwin Otabor

    Environment: SQL Server 2025 Developer Edition

*/

-- Restores the full backup as a separate test database.
-- MOVE redirects the data and log files to new physical file locations.
-- NORECOVERY leaves the database in a restoring state so that the
-- differential and transaction log backups can be applied afterward.
-- REPLACE allows SQL Server to overwrite an existing database with the same name.
-- it is acceptable when you intentionally want to rebuild,
-- but it should be used carefully in production.
-- STATS = 10 reports restore progress in 10-percent increments.

USE master;
GO

RESTORE DATABASE AdventureWorks2014_RestoreTest
FROM DISK = 'C:\SQLBackups\AdventureWorks2014\AdventureWorks2014_FULL.bak'
WITH
    MOVE 'AdventureWorks2014_Data'
        TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER\MSSQL\DATA\AdventureWorks2014_RestoreTest.mdf',

    MOVE 'AdventureWorks2014_Log'
        TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER\MSSQL\DATA\AdventureWorks2014_RestoreTest_log.ldf',

    NORECOVERY,
    REPLACE,
    STATS = 10;
GO