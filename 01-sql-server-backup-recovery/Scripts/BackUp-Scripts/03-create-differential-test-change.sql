/*

    Project: SQL Server Backup and Recovery

    Database: AdventureWorks2014

    Purpose: Creates a full database backup.

    Author: Godwin Otabor

    Environment: SQL Server 2025 Developer Edition

*/

USE AdventureWorks2014;
GO

IF OBJECT_ID('dbo.PortfolioBackupTest', 'U') IS NULL
BEGIN
    CREATE TABLE dbo.PortfolioBackupTest
    (
        TestID INT IDENTITY(1,1) PRIMARY KEY,
        TestDescription NVARCHAR(200) NOT NULL,
        CreatedDate DATETIME2 NOT NULL DEFAULT SYSDATETIME()
    );
END;
GO

INSERT INTO dbo.PortfolioBackupTest (TestDescription)
VALUES ('Change created before differential backup');
GO

SELECT *
FROM dbo.PortfolioBackupTest;
GO