/*

    Project: SQL Server Backup and Recovery

    Database: AdventureWorks2014

    Purpose: Creates a full database backup.

    Author: Godwin Otabor

    Environment: SQL Server 2025 Developer Edition

*/

USE AdventureWorks2014_RestoreTest;
GO

SELECT
    TestID,
    TestDescription,
    CreatedDate
FROM dbo.PortfolioBackupTest
ORDER BY TestID;
GO