/*

    Project: SQL Server Backup and Recovery

    Database: AdventureWorks2014

    Purpose: Creates a full database backup.

    Author: Godwin Otabor

    Environment: SQL Server 2025 Developer Edition

*/


-- Validate the restored database for consistency and corruption.
-- NO_INFOMSGS suppresses routine informational messages and shows only issues.

DBCC CHECKDB ('AdventureWorks2014_RestoreTest')
WITH NO_INFOMSGS;
GO