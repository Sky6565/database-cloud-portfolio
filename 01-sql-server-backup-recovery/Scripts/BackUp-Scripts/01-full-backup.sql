/*

    Project: SQL Server Backup and Recovery

    Database: AdventureWorks2014

    Purpose: Creates a full database backup.

    Author: Godwin Otabor

    Environment: SQL Server 2025 Developer Edition

*/


BACKUP DATABASE AdventureWorks2014
TO DISK =  'C:\SQLBackups\AdventureWorks2014\AdventureWorks2014_FULL.bak'
WITH
   INIT,
   CHECKSUM,
   STATS = 10;