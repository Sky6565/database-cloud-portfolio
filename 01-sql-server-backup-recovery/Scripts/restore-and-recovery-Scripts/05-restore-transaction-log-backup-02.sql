/*

    Project: SQL Server Backup and Recovery

    Database: AdventureWorks2014

    Purpose: Creates a full database backup.

    Author: Godwin Otabor

    Environment: SQL Server 2025 Developer Edition

*/

-- Restore the final transaction log backup and bring the database online.
-- RECOVERY completes the restore sequence and makes the database available.

RESTORE LOG AdventureWorks2014_RestoreTest
FROM DISK = 'C:\SQLBackups\AdventureWorks2014\AdventureWorks2014_LOG_02.trn'
WITH
    RECOVERY,
    STATS = 10;
GO