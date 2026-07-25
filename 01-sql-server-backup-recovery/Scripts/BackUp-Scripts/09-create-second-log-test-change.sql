/*

    Project: SQL Server Backup and Recovery

    Database: AdventureWorks2014

    Purpose: Creates a full database backup.

    Author: Godwin Otabor

    Environment: SQL Server 2025 Developer Edition

*/

USE AdventureWorks2014;
GO

INSERT INTO dbo.PortfolioBackupTest (TestDescription)
VALUES ('Change created before transaction log backup 2');
GO

SELECT *
FROM dbo.PortfolioBackupTest;
GO