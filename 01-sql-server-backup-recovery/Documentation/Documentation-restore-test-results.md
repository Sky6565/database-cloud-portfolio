\# Restore Test Results



\## Database



AdventureWorks2014\_RestoreTest



\## Restore Sequence



1\. Restored the full database backup using NORECOVERY.

2\. Restored the differential backup using NORECOVERY.

3\. Restored transaction log backup 1 using NORECOVERY.

4\. Restored transaction log backup 2 using RECOVERY.

5\. Confirmed that the restored database came online successfully.



\## Data Validation



The restored database contained all expected test records:



\- Change created before differential backup

\- Change created before transaction log backup 1

\- Change created before transaction log backup 2



\## Integrity Validation



The following command was executed:



```sql

DBCC CHECKDB ('AdventureWorks2014\_RestoreTest')

WITH NO\_INFOMSGS;

