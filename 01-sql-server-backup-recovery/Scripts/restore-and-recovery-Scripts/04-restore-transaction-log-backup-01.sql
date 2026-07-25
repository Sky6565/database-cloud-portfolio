/*

    Project: SQL Server Backup and Recovery

    Database: AdventureWorks2014

    Purpose: Creates a full database backup.

    Author: Godwin Otabor

    Environment: SQL Server 2025 Developer Edition

*/


RESTORE LOG AdventureWorks2014_RestoreTest
FROM DISK = 'C:\SQLBackups\AdventureWorks2014\AdventureWorks2014_LOG_01.trn'
WITH
    NORECOVERY,
    STATS = 10;
GO