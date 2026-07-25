/*

    Project: SQL Server Backup and Recovery

    Database: AdventureWorks2014

    Purpose: Creates a full database backup.

    Author: Godwin Otabor

    Environment: SQL Server 2025 Developer Edition

*/

-- Restores the differential backup on top of the full backup.
-- NORECOVERY keeps the database unavailable so transaction log
-- backups can be applied afterward.
-- STATS = 10 reports restore progress in 10-percent increments.

USE master;
GO

RESTORE DATABASE AdventureWorks2014_RestoreTest
FROM DISK =
'C:\SQLBackups\AdventureWorks2014\AdventureWorks2014_DIFF.bak'
WITH
    NORECOVERY,
    STATS = 10;
GO