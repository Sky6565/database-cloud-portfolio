/*

    Project: SQL Server Backup and Recovery

    Database: AdventureWorks2014

    Purpose: Creates a full database backup.

    Author: Godwin Otabor

    Environment: SQL Server 2025 Developer Edition

*/

RESTORE VERIFYONLY
FROM DISK = 'C:\SQLBackups\AdventureWorks2014\AdventureWorks2014_FULL.bak'
WITH CHECKSUM;