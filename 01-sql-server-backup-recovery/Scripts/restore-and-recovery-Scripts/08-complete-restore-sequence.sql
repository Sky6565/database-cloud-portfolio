
/*

    Project: SQL Server Backup and Recovery

    Database: AdventureWorks2014

    Purpose: Creates a full database backup.

    Author: Godwin Otabor

    Environment: SQL Server 2025 Developer Edition

*/



USE master;
GO

-- Step 1: Restore the full backup
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

-- Step 2: Restore the differential backup
RESTORE DATABASE AdventureWorks2014_RestoreTest
FROM DISK = 'C:\SQLBackups\AdventureWorks2014\AdventureWorks2014_DIFF.bak'
WITH
    NORECOVERY,
    STATS = 10;
GO

-- Step 3: Restore transaction log backup 1
RESTORE LOG AdventureWorks2014_RestoreTest
FROM DISK = 'C:\SQLBackups\AdventureWorks2014\AdventureWorks2014_LOG_01.trn'
WITH
    NORECOVERY,
    STATS = 10;
GO

-- Step 4: Restore transaction log backup 2
RESTORE LOG AdventureWorks2014_RestoreTest
FROM DISK = 'C:\SQLBackups\AdventureWorks2014\AdventureWorks2014_LOG_02.trn'
WITH
    RECOVERY,
    STATS = 10;
GO